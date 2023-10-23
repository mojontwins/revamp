// Overlay code
// Draws a lit overlay on splib2's buffer

extern unsigned char ovl_x [];
extern unsigned char ovl_y [];

#asm
._ovl_halo	defb	0, 0, 1, 1, 1, 1, 0, 0
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	0, 0, 1, 1, 1, 1, 0, 0
			
._ovl_x		defb 	0
._ovl_y		defb 	0			

._ovl_buff	defs	864, 0
#endasm

void draw_overlay (unsigned char x, unsigned char y) {
	ovl_x [0] = x;
	ovl_y [0] = y;
	#asm
		call _ovl_draw_scr
	#endasm	
}

void del_overlay (unsigned char x, unsigned char y) {
	ovl_x [0] = x;
	ovl_y [0] = y;
	#asm
		call _ovl_del
	#endasm
}

void draw_buff () {
	#asm
	._ovl_draw_buff
			; hl => ovl_buff + 36 * 3 + 3 = ovl_buff + 111
			ld	hl, _ovl_buff + 111
			ld	b, 18
			; de => 22528 + 32 + 1 = 22561
			ld 	de, 22561
	._ovldbl
			push bc
			
			; Copy 30 attrs
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			; Next line
			inc	de
			inc de
			ld	bc, 6
			add	hl, bc
			
			pop	bc
			djnz _ovldbl
	#endasm
}

#asm

._ovl_draw_scr
			; First we calculate the address
			; address = ovl_buff + ovl_y * 36 + ovl_x
			
			ld 	a, (_ovl_y)
			ld	h, 0
			ld	l, a
			add	hl, hl				; hl = ovl_y * 2
			add	hl, hl				; hl = ovl_y * 4
			push hl
			add hl, hl				; hl = ovl_y * 8
			add	hl, hl				; hl = ovl_y * 16
			add	hl, hl				; hl = ovl_y * 32
			pop	bc
			add	hl, bc				; hl = ovl_y * 36
			ld	a, (_ovl_x)
			ld	d, 0
			ld	e, a
			add	hl, de				; hl = ovl_y * 36 + ovl_x
			ld	de, _ovl_buff
			add	hl, de				; hl = _ovl_buff + ovl_y * 32 + ovl_x
			ld	de, _ovl_halo				
			
			ex	de, hl
			
			; DE -> buffer, HL -> ovl_halo
			
			; Start the tint. 8x8 lines, unrolled.
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
						
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
						
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			
			ret

._ovl_del
			; First we calculate the address
			; address = ovl_buff + ovl_y * 36 + ovl_x
			
			ld 	a, (_ovl_y)
			ld	h, 0
			ld	l, a
			add	hl, hl				; hl = ovl_y * 2
			add	hl, hl				; hl = ovl_y * 4
			push hl
			add hl, hl				; hl = ovl_y * 8
			add	hl, hl				; hl = ovl_y * 16
			add	hl, hl				; hl = ovl_y * 32
			pop	bc
			add	hl, bc				; hl = ovl_y * 36
			ld	a, (_ovl_x)
			ld	d, 0
			ld	e, a
			add	hl, de				; hl = ovl_y * 36 + ovl_x
			ld	de, _ovl_buff
			add	hl, de				; hl = _ovl_buff + ovl_y * 32 + ovl_x
		
			xor	a
						
			; Start the tint. 8x8 lines, unrolled.
			
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
									
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
			
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
					
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
					
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
					
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
					
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ld	bc, 29
			add	hl, bc
					
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
						
			ret
			
#endasm