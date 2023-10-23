// Hyper ugly code ahead.
// Just some functions to output text.
// If you know how to make them relatively faster,
// please do and give us a call.

extern unsigned char ncx [];
extern unsigned char ncy [];
extern unsigned char ncn [];
extern unsigned char ncc [];

#asm	
	._letters
		BINARY "../bin/font.bin"

	._ncx
		defb 0
	._ncy
		defb 0
	._ncc
		defb 0
	._ncn
		defb 0
		
	._line_buffer
		defw $4000, $4020, $4040, $4060, $4080, $40A0, $40C0, $40E0
		defw $4800, $4820, $4840, $4860, $4880, $48A0, $48C0, $48E0
		defw $5000, $5020, $5040, $5060, $5080, $50A0, $50C0, $50E0
#endasm

void draw_char () {
	#asm
		._drawchar
			ld	a, (_ncy)
			add	a, a
			ld	b, 0
			ld	c, a
			ld	hl, _line_buffer
			add	hl, bc
			ld	e, (hl)
			inc	hl
			ld	d, (hl)
			ex	de, hl	
			; hl <= principio de la linea _ncy
			ld	a, (_ncx)
			ld	b, 0
			ld	c, a
			add	hl, bc
			; hl <= address.
			ex	de, hl
			; de <= address.
			
			ld	a, (_ncn)
			ld	h, 0
			ld	l, a
			add	hl, hl	; * 2
			add	hl, hl	; * 4
			add	hl, hl	; * 8
			ld	bc, _letters
			add	hl, bc
			
			; Copy 8 bytes
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
	#endasm
		ncx [0] ++;
}

void draw_fast (unsigned char x, unsigned char y, unsigned char clr, unsigned char *s) {
	unsigned char *address;
	unsigned char i;
	unsigned char c;
	
	//whiteout_everything ();
	
	address = (unsigned char *) (22528 + x + (y << 5));
	ncx [0] = x;
	ncy [0] = y;
	while ((*s) != 0) {
		c = (*s);
		ncn [0] = c - 32;
		draw_char ();
		*address = clr;
		address ++;
		s++;
	}
}

void draw_char_by_char (unsigned char x, unsigned char y, unsigned char *s) {
	unsigned char *address;
	unsigned char i;
	unsigned char c;
	
	//whiteout_everything ();
	
	address = (unsigned char *) (22528 + x + (y << 5));
	ncx [0] = x;
	ncy [0] = y;
	while ((*s) != 0) {
		c = (*s);
		if (c == 13) {
			ncx [0] = x;
			ncy [0] += 2;
			address = (unsigned char *) (22528 + x + (ncy [0] << 5));
		} else {
			ncn [0] = c - 32;
			draw_char ();
			for (i = 1; i < 8; i += 2) {
				*address = i + 64;
				#asm
					halt
				#endasm
				
			}
			address ++;
		}
		s++;
	}
}

unsigned char any_key (void) {
	#asm
			ld  hl, 0
			xor a
			in  a, (0xfe)
			and 0x1f
			cp  0x1f		// Issue 2/3 safe
			ret z
			ld  l, 1
	#endasm
}

void fix_sprites() {
	#asm
		// In: HL -> sprite base pointer
		//     B  -> # of members to skip (6 for 16x16, 8 for 16x24)
		.vtc
			ld  c, 0 						// This will be our counter
			ld  a, 6
			add a, l
			ld  l, a
			jp  nc, vtc_noinc1
			inc h
		.vtc_noinc1 						// Now HL -> sp_SS.first

		.vtc_loop
			// Run accross the linked list. Stop at 0:
			ld  a, (hl)
			or  a 
			jr  z, vtc_fin 					// If 0 -> EOL

			inc hl 
			ld  l, (hl)
			ld  h, a 						// Now HL points to sp_CS

			// Note that sp_CS's first member is the pointer to the next item
			// So we save it:
			push hl 

			// We want to modify sp_CS->graphic, which @ offset 7,
			// But only for members "B", onwards.
			ld  a, c 
			cp  b
			jr  c, vtc_next

			// Skip to sp_CS->graphic, offset 7
			ld  a, 7
			add a, l
			ld  l, a
			jp  nc, vtc_noinc2 
			inc h
		.vtc_noinc2 

			// No point to SPCompNullSprPtr
			ld (hl), SPNullSprPtr%256
			inc hl
			ld (hl), SPNullSprPtr/256

		.vtc_next
			// Next item
			inc c
			pop hl 
			jr  vtc_loop

		.vtc_fin
	#endasm
}

