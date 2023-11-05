// Hyper ugly code ahead.
// Just some functions to output text.
// If you know how to make them relatively faster,
// please do and give us a call.

#asm	
	._letters
		BINARY "../bin/font.bin"
		
	._line_buffer
		defw $4000, $4020, $4040, $4060, $4080, $40A0, $40C0, $40E0
		defw $4800, $4820, $4840, $4860, $4880, $48A0, $48C0, $48E0
		defw $5000, $5020, $5040, $5060, $5080, $50A0, $50C0, $50E0
#endasm

void draw_char () {
	#asm
		._drawchar
			ld	a, (__y)
			add	a, a
			ld	b, 0
			ld	c, a
			ld	hl, _line_buffer
			add	hl, bc
			ld	e, (hl)
			inc	hl
			ld	d, (hl)
			ex	de, hl	
			; hl <= principio de la linea __y
			ld	a, (__x)
			ld	b, 0
			ld	c, a
			add	hl, bc
			; hl <= address.
			ex	de, hl
			; de <= address.
			
			ld	a, (__t)
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
	
	_x ++;
}

void draw_fast (unsigned char x, unsigned char y, unsigned char clr, unsigned char *s) {	
	_x = x;
	_y = y;
	gen_pt = (unsigned char *) (22528 + _x + (_y << 5));
	while ((*s) != 0) {
		_t = (*s) - 32;
		draw_char ();
		*gen_pt = clr;
		gen_pt ++;
		s++;
	}
}

void draw_char_by_char (unsigned char x, unsigned char y, unsigned char *s) {
	//whiteout_everything ();
	
	gen_pt = (unsigned char *) (22528 + x + (y << 5));
	_x = x;
	_y = y;
	while ((*s) != 0) {
		rdc = (*s);
		if (rdc == 13) {
			_x = x;
			_y += 2;
			gen_pt = (unsigned char *) (22528 + x + (_y << 5));
		} else {
			_t  = rdc - 32;
			draw_char ();
			for (gpit = 1; gpit < 8; gpit += 2) {
				*gen_pt = gpit + 64;
				#asm
					halt
				#endasm
				
			}
			gen_pt ++;
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

