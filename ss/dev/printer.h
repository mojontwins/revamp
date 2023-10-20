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
		defb   0,  0,  0,  0,  0,  0,  0,  0
		defb   0, 24, 24, 24, 24,  0, 24,  0
		defb   0,108,108,  0,  0,  0,  0,  0
		defb   0,108,124,108,108,124,108,  0
		defb   0, 56, 96,112,112, 96, 56,  0
		defb   0, 12, 88, 24, 48, 52, 96,  0
		defb   0,  0, 56, 40, 92, 72, 60,  0
		defb   0, 96, 96,  0,  0,  0,  0,  0
		defb   0,112, 96, 96, 96, 96,112,  0
		defb   0,112, 48, 48, 48, 48,112,  0
		defb   0,  0, 36, 24, 24, 36,  0,  0
		defb   0,  0, 16,124,124, 16,  0,  0
		defb   0,  0,  0,  0,  0, 24, 24,  0
		defb   0,  0,  0,  0,124,  0,  0,  0
		defb   0,  0,  0,  0, 24,  8, 16,  0
		defb   0,  6, 12, 24, 48, 96, 64,  0
		defb   0, 60,102,102,102,102, 60,  0
		defb   0, 56, 24, 24, 24, 24, 60,  0
		defb   0,124,  6, 60, 96, 96,126,  0
		defb   0,124,  6, 60,  6,  6,124,  0
		defb   0,100,100,100,100,126,  4,  0
		defb   0,124, 96,124, 14, 14,124,  0
		defb   0, 60, 96,124,102,102, 60,  0
		defb   0,126,  6,  6, 12, 24, 48,  0
		defb   0, 60,102, 60,102,102, 60,  0
		defb   0, 60,102,102, 62,  6, 60,  0
		defb   0,  0, 24, 24,  0, 24, 24,  0
		defb   0,  0, 24, 24,  0, 24, 16,  0
		defb   0, 24, 48, 96, 48, 24,  0,  0
		defb   0,124,124,  0,  0,124,124,  0
		defb   0, 96, 48, 24, 48, 96,  0,  0
		defb   0,124,  6, 28, 48,  0, 48,  0
		defb   0,126,110,110, 96, 98,126,  0
		defb   0, 60,102,102,126,102,102,  0
		defb   0,124,102,124,102,102,124,  0
		defb   0, 60,102, 96, 96,102, 60,  0
		defb   0,120,108,102,102,102,124,  0
		defb   0,126, 96,124, 96, 96,126,  0
		defb   0,126, 96,124, 96, 96, 96,  0
		defb   0, 60,102, 96,110,102, 60,  0
		defb   0,102,102,126,102,102,102,  0
		defb   0, 24, 24, 24, 24, 24, 24,  0
		defb   0,  6,  6,  6,102,102, 60,  0
		defb   0,102,108,120,120,108,102,  0
		defb   0, 96, 96, 96, 96, 96,126,  0
		defb   0,124, 86, 86, 86, 86, 86,  0
		defb   0,124,102,102,102,102,102,  0
		defb   0, 60,102,102,102,102, 60,  0
		defb   0,124,102,102,124, 96, 96,  0
		defb   0, 60,102,102,102,108, 58,  0
		defb   0,124,102,102,124,100,102,  0
		defb   0, 62, 96,124,  6,126,124,  0
		defb   0,126, 24, 24, 24, 24, 24,  0
		defb   0,102,102,102,102,102, 60,  0
		defb   0,102,102,102, 36, 60, 24,  0
		defb   0, 86, 86, 86, 86, 86,124,  0
		defb   0, 70, 44, 24, 48,100, 66,  0
		defb   0,102,102,126, 24, 24, 24,  0
		defb   0,126, 12, 24, 48, 96,126,  0
		defb   0,112, 96, 96, 96, 96,112,  0
		defb   0, 96, 48, 24, 12,  6,  2,  0
		defb   0, 56, 24, 24, 24, 24, 56,  0
		defb   0, 24, 60,102,  0,  0,  0,  0
		defb   0,  0,  0,  0,  0,  0,  0,  0
		
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

void __FASTCALL__ draw_char () {
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
#asm

#endasm
void clear_viewport (unsigned char attr) {
	ncc [0] = attr;
	#asm
		ld	bc, 1
		
	cv_l0:
		xor a
		ld	hl, _line_buffer
		add	hl, bc
		add	hl, bc
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	de
		push bc
		ld	b, 30
		
	cv_l1:
		push de
		
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
		inc	d
		ld	(de), a
	
		pop	de
		inc	de
		
		djnz cv_l1
		pop	bc
		inc	bc
		ld	a, c
		cp	18
		jr	nz, cv_l0
	
	;; Y whiteout
		
		ld	a, (_ncc)
		ld	de, 22561 ; 22528 + 33
		ld	b, 15
	cv_l2:
		push bc
		ld	b, 30
	cv_l3:
		ld	(de), a
		inc	de
		djnz cv_l3
		
		inc	de
		inc	de
		
		pop	bc
		djnz cv_l2
	#endasm
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

void any_key (void) {
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

