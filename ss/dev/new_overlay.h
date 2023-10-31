// new_overlay.h
// A half assed attempt to have the overlay not need a buffer

#asm
._ovl_halo	defb	0, 0, 1, 1, 1, 1, 0, 0
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 7, 7, 6, 5, 1
			defb	1, 5, 6, 7, 7, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	0, 0, 1, 1, 1, 1, 0, 0
#endasm

/* 

	Problem: the area we are using is 30cx18 cells, but the halo can get to (-3,-3)->(32, 20).
	That means we need to clip it somehow.

	I'm trying to work this out in pseudocode.

	_x, _y range is (-3,-3)->(25, 13). We have to paint 8cx8.

	Initially: 
		cx1 = _x; cx2 = _x + 8;
		cy1 = _y; cy2 = _y + 8;

	Then:
		if (cx1 < 0) cx1 = 0;
		if (cx2 > 30) cx2 = 30;
		if (cy1 < 0) cy1 = 0;
		if (cy2 > 18) cy2 = 18;

	And so:
		for(x = 0; x < 30; x ++) {
			for(y = 0; y < 18; y ++) {
				if(x >= cx1 && x < cx2 && y >= cy1 && y < cy2) paint halo (idx)
				else paint black
			}
		}

	paint halo would be ovl_halo[(x - cx1) + 8 * (y - cy1)]

	Optimized algorithm is like:
	for(y = 0; y < 18; y ++) {
		if(y >= y1 && y < y2) {
			for(x = 0; x < 30; x ++) {
				if(x < x1) draw black attribute
				else if(x >= x2) paint black the remaining of current line y
				else paint sprite color (x - ovl_x, y - ovl_y)
			}
		} else {
			paint black current line y 
		}
	}

*/

#asm
	.ovl_update
	// ovl_x, ovl_y are signed

	// Calculate cx1, cx2

		ld  a, (_ovl_x)

		// cx1 = ovl_x < 0 ? 0 : ovl_x
		bit 7, a 
		jr  z, ovl_noadj1

		xor a

	.ovl_noadj1 
		ld  (_cx1), a 

		// cx2 = cx1 + 8; if (cx2 > 30) cx2 = 30
		ld  a, (_ovl_x)
		add 8
		cp  30 
		jr  c, ovl_noadj2 

		ld  a, 30 
	.ovl_noadj2 
		ld  (_cx2), a 

	// Calculate cy1, cy2

		ld  a, (_ovl_y)

		// cx1 = ovl_x < 0 ? 0 : ovl_x
		bit 7, a 
		jr  z, ovl_noadj3

		xor a

	.ovl_noadj3 
		ld  (_cy1), a 

		// cy2 = cy1 + 8; if (cy2 > 18) cy2 = 18
		ld  a, (_ovl_y)
		add 8
		cp  18
		jr  c, ovl_noadj4

		ld  a, 18 
	.ovl_noadj4 
		ld  (_cy2), a 

	// Fill loop: 18 lines, 30 columns from 22528 + 32 + 1 = 22561
	
		ld  de, 22561
		xor a 
	.ovl_line_loop		
		ld  (__y), a
		ld  b, a

		// Paint a full black line if b < cy1 or b >= cy2
		ld  a, (_cy1)
		ld  c, a  
		ld  a, b 				// A = x
		cp  c  					// C = cx1
		jr  c, ovl_fullblack	// x < cx1 -> black

		ld  a, (_cy2) 
		ld  c, a 
		ld  a, b  				// A = x
		cp  c  					// C = cx2 
		jr  nc, ovl_fullblack	// x >= cx2 -> black

	// this is a line which contains a portion of the halo.
		xor a 
	.ovl_col_loop
		ld  (__x), a 
		ld  b, a

		// x < cx1 ?
		ld  a, (_cx1)
		ld  c, a  
		ld  a, b 				// A = x
		cp  c  					// C = cx1
		jr  c, ovl_zero  		// x < cx1 -> black

	 	// x >= cx2 ? quickly black out the rest of the line	 	
	 	ld  a, (_cx2)
	 	ld  c, a 
	 	ld  a, b 				// A = x
	 	cp  c 					// C = cx1
	 	jr 	nc, ovl_zero_remaining		// x > cx2 -> black

	// Paint the correct color from ovl_halo.
	// the colour should be (y - ovl_y) * + (x - ovl_x)
	 	ld  a, (_ovl_y)
	 	ld  c, a 
	 	ld  a, (__y)
	 	sub c 
	 	sla a 
	 	sla a 
	 	sla a
	 	ld  b, a 
	 	ld  a, (_ovl_x)
	 	ld  c, a 
	 	ld  a, (__x)
	 	sub c 
	 	add b 
	 	ld  b, 0
	 	ld  c, a 
	 	ld  hl, _ovl_halo
	 	add hl, bc

	 	ld  a, (hl)
	 	jr  ovl_set

	 .ovl_zero
	 	xor a 

	 .ovl_set 
	 	ld  (de), a 
	 	inc de

		ld  a, (__x)
		inc a 
		cp  30 
		jr  nz, ovl_col_loop		

		jr  ovl_next

	.ovl_zero_remaining
	
	// Note that each ld (de),a : inc de takes 2 bytes
	// so jp ovl_unroll + 2 * x will paint from x onwards!

		ld  a, b 
		sla a 
		ld  b, 0 
		ld  c, a 
		ld  hl, ovl_unroll
		add hl, bc 
		xor a
		jp  (hl)

	// Paints a full black line
	
	.ovl_fullblack
		xor a 
	.ovl_unroll
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de

	.ovl_next
		inc de 
		inc de

		ld  a, (__y)
		inc a 
		cp  18
		jp  nz, ovl_line_loop

		ret

#endasm
