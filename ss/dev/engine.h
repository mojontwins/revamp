// Engine phantomoso y phantomero.

// Functions

unsigned char attr (char x, char y) {
	// return tile_behaviour [map_buffer [(y << 4) - y + x]];	
	#asm
			ld  hl, 4
			add hl, sp
			ld  c, (hl) 	// x

			dec hl
			dec hl
			ld  a, (hl) 	// y

			ld  b, a 
			sla a
			sla a
			sla a
			sla a
			sub b
			add c

			ld  d, 0
			ld  e, a 
			ld  hl, _map_buffer
			add hl, de 
			ld  l, (hl)
			ld  h, 0 
			ld  de, _tile_behaviour
			add hl, de 
			ld  l, (hl)
			ld  h, 0
	#endasm
}

void espera_activa (int espera) {
	// Waits until "espera" halts have passed 
	// or a key has been pressed.

	gpit = any_key ();
	while (espera --)  {
		#asm
			halt
		#endasm
	
		gpjt = any_key ();
		if (gpjt && gpit == 0) {
			break;
		}
		gpit = gpjt;
	}
}

void init_player (unsigned char level) {
	p_x = levels [level].init_x;
	p_y = levels [level].init_y;
	p_mx = 0;
	p_my = 0;
	p_sal = 0;
	p_nu = 0;
	p_frame = 0;
	p_facing = levels [level].init_facing;
	p_life = 199;
	p_score = 0;	
	p_next_frame = sprite_1_a;
}

void draw_life () {
	rda = 246 + (p_life / 100); rdb = 246 + (p_life % 100) / 10; rdc = 246 + (p_life % 10);
	#asm
			; enter:  A = row position (0..23)
			;         C = col position (0..31/63)
			;         D = pallette #
			;         E = graphic #

			ld  a, (_rda)
			ld  e, a

			ld  d, 71
			
			ld  c, 24
			ld  a, 22

			call SPPrintAtInv

			ld  a, (_rdb)
			ld  e, a

			ld  d, 71
			
			ld  c, 25
			ld  a, 22

			call SPPrintAtInv

			ld  a, (_rdc)
			ld  e, a

			ld  d, 71
			
			ld  c, 26
			ld  a, 22

			call SPPrintAtInv
	#endasm
}

void draw_score (void) {
	rda = 246 + (p_score / 10); rdb = 246 + (p_score % 10);
	#asm
			; enter:  A = row position (0..23)
			;         C = col position (0..31/63)
			;         D = pallette #
			;         E = graphic #

			ld  a, (_rda)
			ld  e, a

			ld  d, 71
			
			ld  c, 29
			ld  a, 22

			call SPPrintAtInv

			ld  a, (_rdb)
			ld  e, a

			ld  d, 71
			
			ld  c, 30
			ld  a, 22

			call SPPrintAtInv
	#endasm
}

void move () {
	gpit = (joyfunc) (&keys);
	rdx = p_x >> 4;
	rdy = p_y >> 4;
	
	// Behold the evil tile!
	
	if (attr (rdx, rdy) == 1 || 
		((p_x & 15) != 0 && attr (rdx + 1, rdy) == 1) ||
		((p_y & 15) != 0 && attr (rdx, rdy + 1) == 1) ||
		((p_x & 15) != 0 && (p_y & 15) != 0 && attr (rdx + 1, rdy + 1) == 1)) {
		if (p_life > 0 && half_life) {
			wyz_play_sound (1);
			p_life --;	
			draw_life ();
		}
	}
	
	
	if (p_sal == 0) {	
		if ((gpit & sp_UP) && (gpit & sp_DOWN)) {
			p_kpress = 0;
		}
				
		falling = 0;
		
		if (p_y < 128)
			if (
				(p_y & 15) != 0 ||
				((p_y & 15) == 0 && 
				(attr (rdx, rdy + 1) < 2 && 
				((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (rdx + 1, rdy + 1) < 2))))) {
					falling = 1;	
				}
		
		if (prefalling != falling && !falling)
			wyz_play_sound (0);
			
		prefalling = falling;
			
		if (!falling) {	
			
			// Walk
			
			if ((gpit & sp_LEFT) == 0) {
				if (p_facing == 0) {
					p_facing = 4;
				} else {
					if ((p_x & 15) != 0 ||
					(p_x != 0 && (p_x & 15) == 0 &&
					(attr (rdx - 1, rdy) < 3 /*&&
					((p_y & 15) == 0 ||
					((p_y & 15) != 0 && attr (rdx - 1, rdy + 1) < 3))*/))) {
						p_x -= 2;
						p_frame = (p_frame + 1) & 3;
						rdx = p_x >> 4;
					}
				}
			}
			
			if ((gpit & sp_RIGHT) == 0) {
				if (p_facing == 4) {
					p_facing = 0;
				} else {
					if ((p_x & 15) != 0 ||
					((p_x & 15) == 0 &&
					(attr (rdx + 1, rdy) < 3 /*&&
					((p_y & 15) == 0 ||
					((p_y & 15) != 0 && attr (rdx + 1, rdy + 1) < 3))*/))) {
						p_x += 2;
						p_frame = (p_frame + 1) & 3;
						rdx = p_x >> 4;
					}
				}
			}
			
			// Jump
			
			if (!p_kpress) {
				if ((gpit & sp_UP) == 0) {
					p_x = ((p_x >> 1) << 1);
					p_mx = 2;
					p_my = 4;
					p_nu = 0;
					p_sal = 1;
					p_kpress = 1;
					wyz_play_sound (8);
				}
				
				if ((gpit & sp_DOWN) == 0) {
					p_x = ((p_x >> 2) << 2);
					p_mx = 4;
					p_my = 2;
					p_nu = 0;
					p_sal = 1;
					p_kpress = 1;
					wyz_play_sound (7);
				}
			}
			
			// Slide
			
			if (half_life && !p_sal) {
				if (p_x > 0 && (attr (rdx, rdy + 1) == 4 ||
					((p_x & 15) != 0 && attr (rdx + 1, rdy + 1) == 4)) &&
					((p_x & 15) != 0 || ((p_x & 15) == 0 && attr (rdx - 1, rdy) < 3))) {
					p_x -=2;
					if (fc == 0) wyz_play_sound (2);
					//rdx = p_x >> 4;
				}
				
				if (p_x < 224 && (attr (rdx, rdy + 1) == 5 ||
					((p_x & 15) != 0 && attr (rdx + 1, rdy + 1) == 5)) &&
					((p_x & 15) != 0 || ((p_x & 15) == 0 && attr (rdx + 1, rdy) < 3))) {
					p_x +=2;
					if (fc == 0) wyz_play_sound (2);
					//rdx = p_x >> 4;
				}
			}
			
		} else {
			// Fall and make multiple of 8 //4
			
			p_y += 8;
			//p_y = (p_y >> 2) << 2;
			p_y = (p_y >> 3) << 3;
		}
			
	} else {
		
		// Jumping
		
		if (p_nu < 8) {
			if (p_y > 0) {
				if ((p_y & 15) != 0 ||
				(p_y != 0 && (p_y & 15) == 0 && 
				(attr (rdx, rdy - 1) < 3 && 
				((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (rdx + 1, rdy - 1) < 3))))) {
					p_y -= p_my;
				}
			}
		} else {
			if ((p_y & 15) != 0) {
				p_y += p_my;
			} else {
				if ((p_y & 15) == 0 && 
					(attr (rdx, rdy + 1) < 2 && 
					((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (rdx + 1, rdy + 1) < 2)))) {
					p_y += p_my;
				} else {
					p_sal = 0;
					wyz_play_sound (0);					
				}
			}
		}
		
		if (p_sal) {
			rdy = p_y >> 4;
			
			if (p_facing) {
				if ((p_x & 15) != 0 ||
				(p_x != 0 && (p_x & 15) == 0 &&
				(attr (rdx - 1, rdy) < 3 &&
				((p_y & 15) == 0 ||
				((p_y & 15) != 0 && attr (rdx - 1, rdy + 1) < 3))))) {
					p_x -= p_mx;
				}
			} else {
				if ((p_x & 15) != 0 ||
				((p_x & 15) == 0 &&
				(attr (rdx + 1, rdy) < 3 &&
				((p_y & 15) == 0 ||
				((p_y & 15) != 0 && attr (rdx + 1, rdy + 1) < 3))))) {
					p_x += p_mx;
				}
			}
			
			p_nu ++;
			if (p_nu == 16) {
				p_sal = 0;
				wyz_play_sound (0);	
			}
		}
	}
	
	// Which frame?
	
	if (p_sal || falling) {
		if (p_facing) {
			p_next_frame = sprite_8_a;
		} else {
			p_next_frame = sprite_4_a;
		}
	} else {
		if (p_facing) {
			if (p_frame == 0 || p_frame == 2) {
				p_next_frame = sprite_5_a;
			} else if (p_frame == 1) {
				p_next_frame = sprite_6_a;
			} else {
				p_next_frame = sprite_7_a;
			}	
		} else {
			if (p_frame == 0 || p_frame == 2) {
				p_next_frame =sprite_1_a;
			} else if (p_frame == 1) {
				p_next_frame = sprite_2_a;
			} else {
				p_next_frame = sprite_3_a;
			}	
		}
	}
}

/*
unsigned char collide (unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2) {
	unsigned char l1x, l1y, l2x, l2y;
	l1x = (x1 > 12) ? x1 - 12 : 0;
	l2x = x1 + 12;
	l1y = (y1 > 12) ? y1 - 12 : 0;
	l2y = y1 + 12;
	return (x2 >= l1x && x2 <= l2x && y2 >= l1y && y2 <= l2y);
}
*/

unsigned char collide (void) {
	// checks 12x12 collision between player @ p_x, p_y and whatever is @ rdx, rdy
	#asm
			ld  hl, 0

		// p_x + BB_SIZE >= rdx
			ld  a, (_rdx)
			ld  c, a 
			ld  a, (_p_x)
			add BB_SIZE
			cp  c
			ret c 

		// p_x <= cx2 + BB_SIZE -> cx + BB_SIZE >= p_x
			ld  a, (_p_x)
			ld  c, a 
			ld  a, (_rdx)
			add BB_SIZE
			cp  c 
			ret c

		// p_y + BB_SIZE >= cy2
			ld  a, (_rdy)
			ld  c, a 
			ld  a, (_p_y)
			add BB_SIZE
			cp  c
			ret c 

		// p_y <= cy2 + BB_SIZE -> cy + BB_SIZE >= p_y
			ld  a, (_p_y)
			ld  c, a 
			ld  a, (_rdy)
			add BB_SIZE
			cp  c 
			ret c

			ld  l, 1
	#endasm
}

void move_enemies () {
	for (enit = 0; enit < 3; enit ++) {
		enoffsmasi = enoffs + enit;
		rdt = malotes [enoffsmasi].t;
		if (rdt != 0) {
			malotes [enoffsmasi].x += malotes [enoffsmasi].mx;
			malotes [enoffsmasi].y += malotes [enoffsmasi].my;
			
			rdx = malotes [enoffsmasi].x;
			rdy = malotes [enoffsmasi].y;
			
			if (collide ()) {
				if (p_life > 0) {
					p_life --;
					draw_life ();
					wyz_play_sound (1);
				} 	
			}
			
			if (rdx == malotes [enoffsmasi].x1 || rdx == malotes [enoffsmasi].x2)
				malotes [enoffsmasi].mx = -malotes [enoffsmasi].mx;
			if (rdy == malotes [enoffsmasi].y1 || rdy == malotes [enoffsmasi].y2)
				malotes [enoffsmasi].my = -malotes [enoffsmasi].my;
				
			en_an_count [enit] ++; 
			if (en_an_count [enit] == 4) {
				en_an_count [enit] = 0;
				en_an_frame [enit] = !en_an_frame [enit];
				
				rda = (malotes [enoffsmasi].mx < 0 || malotes [enoffsmasi].my < 0);
				en_an_next_frame [enit] = sprite_frames[en_an_base_cell [enit] + (rda << 1) + en_an_frame [enit]];

			}
		}	
	}
}

void init_hotspots () {
	#asm
			// iterate MAP_W*MAP_H times
			// start with _hotspots + 2
			// set to 1, increment pointer by 3
			ld  b, 25
			ld  hl, _hotspots + 2
			ld  de, 3
			ld  a, 1
		.init_hotspots_loop
			ld  (hl), a
			add hl, de
			djnz init_hotspots_loop
	#endasm		
}
	
void muerte (unsigned char a, unsigned char b) {
	rdc = 0;
	sp_UpdateNow ();
	wyz_play_sound (3);
	for (gpit = 0; gpit < 100; gpit++) 	{
		if (any_key ()) break;
		rdc ^= 1;
		asm_number [0] = rdc ? a : b;
		#asm
				ld	a, (_asm_number)
				ld	hl, 22561
				ld	de, 22561
				
				ld	b, 18
				
				halt
				
		.mb1	push bc
				ld	(hl), a
				inc	de
				
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
				
				inc	hl
				inc hl
				inc hl
				
				push hl
				pop	de
				
				pop bc
				djnz mb1
		#endasm
		if (gpit & 1)
			wyz_play_sound (1);
	}
}

unsigned char rand (void) {
	#asm
		.rand16
			ld	hl, _seed
			ld	a, (hl)
			ld	e, a
			inc	hl
			ld	a, (hl)
			ld	d, a
			
			;; Ahora DE = [SEED]
						
			ld	a,	d
			ld	h,	e
			ld	l,	253
			or	a
			sbc	hl,	de
			sbc	a, 	0
			sbc	hl,	de
			ld	d, 	0
			sbc	a, 	d
			ld	e,	a
			sbc	hl,	de
			jr	nc,	nextrand
			inc	hl
		.nextrand
			ld	d,	h
			ld	e,	l
			ld	hl, _seed
			ld	a,	e
			ld	(hl), a
			inc	hl
			ld	a,	d
			ld	(hl), a
			
			;; Ahora [SEED] = HL
		
			ld  l, e
			ret
	#endasm
}

unsigned char game (unsigned char level) {

	x_pant = levels [level].init_x_pant;
	y_pant = levels [level].init_y_pant;

	load_level (level);

	init_player (level);
	init_hotspots ();

	sp_UpdateNow ();

	blackout_everything ();
	get_resource(RAM3_MARCADOR_BIN, 16384);
	
	draw_life ();
	draw_score ();
	
	render_screen (x_pant, y_pant);
	
	f_win = f_gameover = 0;

	wyz_play_music (2 + level);
	fc = half_life = 0;
	
	while (!(f_win || f_gameover)) {	
	
		// Move
		
		move ();
		move_enemies ();
		
		// Animate water tiles (cheesy but fast)
		
		gpit = rand () & 15;
		if (gpit < n_blobs) {
			blobs_v [gpit] = 1 - blobs_v [gpit]; 
			_x = blobs_x [gpit]; _y =blobs_y [gpit]; _t = 45 + blobs_v [gpit];
			draw_coloured_tile ();
			invalidate_tile ();
		}
		
		// Lit somewhat obscured screens
		
		if (y_pant >= yOsc) {
			draw_overlay ((p_x >> 3), (p_y >> 3));
			draw_buff ();
			del_overlay ((p_x >> 3), (p_y >> 3));
		}
		
		// erm...
		
		if (p_y > 128) p_y = 128;
		if (p_x > 224) p_x = 224;
		
		// Checks

		gpit = (joyfunc) (&keys);
		rdx = p_x >> 4;
		rdy = p_y >> 4;
		if (p_x == 0) {
			if (((gpit & sp_LEFT) == 0 || (p_sal && p_facing) || (attr (rdx, rdy + 1) == 4 && (gpit & sp_RIGHT) != 0)) && x_pant > 0) {
				x_pant --;
				p_x = 224;
				render_screen (x_pant, y_pant);
			}
		} else if (p_x == 224) {
			if (((gpit & sp_RIGHT) == 0 || (p_sal && !p_facing) || (attr (rdx, rdy + 1) == 5 && (gpit & sp_LEFT) != 0)) && x_pant < 4) {
				x_pant ++;
				p_x = 0;
				render_screen (x_pant, y_pant);
			}
		}
		
		if (p_y == 0) {
			if (p_sal == 1 && y_pant > 0 && p_nu < 7) {
				y_pant --;
				p_y = 128;
				p_nu --;
				render_screen (x_pant, y_pant);
			}
		} else if (p_y == 128) {
			if ((p_sal == 0 || p_nu > 8) && y_pant < 4) {
				y_pant ++;
				p_y = 0;
				render_screen (x_pant, y_pant);
			}	
		}
		
		rdx = hotspot_x; rdy = hotspot_y;
		if (collide ()) {		
			_x = VIEWPORT_X + (hotspot_x >> 3); _y = VIEWPORT_Y + (hotspot_y >> 3); _t = orig_tile;	
			draw_coloured_tile ();
			invalidate_tile ();

			hotspot_x = hotspot_y = 240;
			if (hotspots [n_pant].tipo == 1) {
				p_score ++;
				draw_score ();	
				wyz_play_sound (3);
			} else if (hotspots [n_pant].tipo == 2) {
				p_life = p_life > 223 ? 255 : (p_life + 32);
				draw_life ();
				wyz_play_sound (5);
			}
			hotspots [n_pant].act = 0;
		}
		
		// Quitar esto
		
		if (sp_KeyPressed (key_z)) {
			p_score ++;
			draw_score ();
			wyz_play_sound (3);
		}
				
		// Render
		#asm
				ld  ix, (_sp_player)
				ld  iy, vpClipStruct

				ld  hl, (_p_next_frame)
				ld  de, (_p_current_frame)
				or  a
				sbc hl, de
				ld  b, h
				ld  c, l

				ld  a, (_p_y)
				srl a
				srl a
				srl a
				add VIEWPORT_Y
				ld  h, a 

				ld  a, (_p_x)
				srl a
				srl a
				srl a
				add VIEWPORT_X
				ld  l, a 
				
				ld  a, (_p_x)
				and 7
				ld  d, a

				ld  a, (_p_y)
				and 7
				ld  e, a
				call SPMoveSprAbs
		#endasm

		p_current_frame = p_next_frame;

		for (enit = 0; enit < 3; enit ++) {
			enoffsmasi = enoffs + enit;

			if (malotes [enoffsmasi].t != 0) {		// Esto sólo es necesario si hay habitaciones con menos de 3.
				_en_x = malotes [enoffsmasi].x;
				_en_y = malotes [enoffsmasi].y;
			} else {
				_en_x = 240;
			}


			#asm
				; enter: IX = sprite structure address 
				;        IY = clipping rectangle, set it to "ClipStruct" for full screen 
				;        BC = animate bitdef displacement (0 for no animation) 
				;         H = new row coord in chars 
				;         L = new col coord in chars 
				;         D = new horizontal rotation (0..7) ie horizontal pixel position 
				;         E = new vertical rotation (0..7) ie vertical pixel position 

				// sp_moviles [enit] = sp_moviles + enit*2
				ld  a, (_enit)
				sla a
				ld  c, a
				ld  b, 0 				// BC = offset to [enit] in 16bit arrays
				ld  hl, _sp_moviles
				add hl, bc
				ld  e, (hl)
				inc hl 
				ld  d, (hl)
				push de						
				pop ix

				// Clipping rectangle
				ld  iy, vpClipStruct

				// Animation
				// en_an_next_frame [enit] - en_an_current_frame [enit]
				ld  hl, _en_an_current_frame
				add hl, bc 				// HL -> en_an_current_frame [enit]
				ld  e, (hl)
				inc hl 
				ld  d, (hl) 			// DE = en_an_current_frame [enit]

				ld  hl, _en_an_next_frame
				add hl, bc 				// HL -> en_an_next_frame [enit]
				ld  a, (hl)
				inc hl
				ld  h, (hl)
				ld  l, a 				// HL = en_an_next_frame [enit]

				or  a 					// clear carry
				sbc hl, de 				// en_an_next_frame [enit] - en_an_current_frame [enit]

				push bc 				// Save for later

				ld  b, h
				ld  c, l 				// ** BC = animate bitdef **

				//VIEWPORT_Y + (rdy >> 3), VIEWPORT_X + (rdx >> 3)
				ld  a, (__en_y)					
				srl a
				srl a
				srl a
				add VIEWPORT_Y
				ld h, a

				ld  a, (__en_x)
				srl a
				srl a
				srl a
				add VIEWPORT_X
				ld  l, a

				// rdx & 7, rdy & 7
				ld  a, (__en_x)
				and 7
				ld  d, a

				ld  a, (__en_y)
				and 7
				ld  e, a

				call SPMoveSprAbs

				// en_an_current_frame [enit] = en_an_next_frame [enit];

				pop bc 					// Retrieve index

				ld  hl, _en_an_current_frame
				add hl, bc
				ex  de, hl 				// DE -> en_an_current_frame [enit]	

				ld  hl, _en_an_next_frame
				add hl, bc 				// HL -> en_an_next_frame [enit]
				
				ldi
				ldi
			#endasm
		
		}
		
		half_life ^= 1;
		fc++; if (fc == 8) fc = 0;
		
		// Update
		attrs_byte = y_pant >= yOsc;
		sp_UpdateNow ();
		
		// The last day on earth:
		
		if (p_life == 0 || sp_KeyPressed (key_g)) {
			wyz_stop_sound ();
			muerte (2, 16);
			f_gameover = 1;
		}
		
		if (p_score == 15) {
			wyz_stop_sound ();
			f_win = 1;	
		}
	};
	
	return f_win;
}
