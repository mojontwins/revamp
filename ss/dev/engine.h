// Engine phantomoso y phantomero.

// Functions

unsigned char __FASTCALL__ attr (char x, char y) {
	//if (x < 0 || x > 14 || y < 0 || y > 8) return 0;
	return tile_behaviour [map_buffer [(y << 4) - y + x]];	
}

void espera_activa (int espera) {
	for (gpint = 0; gpint < espera; gpint ++) {
		#asm
			halt
		#endasm
		if (sp_GetKey ()) break;
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
	sp_PrintAtInv (22, 24, 71, 246 + (p_life / 100));
	sp_PrintAtInv (22, 25, 71, 246 + (p_life % 100) / 10);
	sp_PrintAtInv (22, 26, 71, 246 + (p_life % 10));
}

void draw_score (void) {
	sp_PrintAtInv (22, 29, 71, 246 + (p_score / 10));
	sp_PrintAtInv (22, 30, 71, 246 + (p_score % 10));
}

unsigned char prefalling;
void move () {
	unsigned char i;
	unsigned char xx, yy;
	unsigned char falling;
	
	i = (joyfunc) (&keys);
	xx = p_x >> 4;
	yy = p_y >> 4;
	
	// Behold the evil tile!
	
	if (attr (xx, yy) == 1 || 
		((p_x & 15) != 0 && attr (xx + 1, yy) == 1) ||
		((p_y & 15) != 0 && attr (xx, yy + 1) == 1) ||
		((p_x & 15) != 0 && (p_y & 15) != 0 && attr (xx + 1, yy + 1) == 1)) {
		if (p_life > 0 && half_life) {
			wyz_play_sound (1, 2);
			p_life --;	
			draw_life ();
		}
	}
	
	
	if (p_sal == 0) {	
		if ((i & sp_UP) && (i & sp_DOWN)) {
			p_kpress = 0;
		}
				
		falling = 0;
		
		if (p_y < 128)
			if (
				(p_y & 15) != 0 ||
				((p_y & 15) == 0 && 
				(attr (xx, yy + 1) < 2 && 
				((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (xx + 1, yy + 1) < 2))))) {
					falling = 1;	
				}
		
		if (prefalling != falling && !falling)
			wyz_play_sound (0, 2);
			
		prefalling = falling;
			
		if (!falling) {	
			
			// Walk
			
			if ((i & sp_LEFT) == 0) {
				if (p_facing == 0) {
					p_facing = 4;
				} else {
					if ((p_x & 15) != 0 ||
					(p_x != 0 && (p_x & 15) == 0 &&
					(attr (xx - 1, yy) < 3 /*&&
					((p_y & 15) == 0 ||
					((p_y & 15) != 0 && attr (xx - 1, yy + 1) < 3))*/))) {
						p_x -= 2;
						p_frame = (p_frame + 1) & 3;
						xx = p_x >> 4;
					}
				}
			}
			
			if ((i & sp_RIGHT) == 0) {
				if (p_facing == 4) {
					p_facing = 0;
				} else {
					if ((p_x & 15) != 0 ||
					((p_x & 15) == 0 &&
					(attr (xx + 1, yy) < 3 /*&&
					((p_y & 15) == 0 ||
					((p_y & 15) != 0 && attr (xx + 1, yy + 1) < 3))*/))) {
						p_x += 2;
						p_frame = (p_frame + 1) & 3;
						xx = p_x >> 4;
					}
				}
			}
			
			// Jump
			
			if (!p_kpress) {
				if ((i & sp_UP) == 0) {
					p_x = ((p_x >> 1) << 1);
					p_mx = 2;
					p_my = 4;
					p_nu = 0;
					p_sal = 1;
					p_kpress = 1;
					wyz_play_sound (8, 2);
				}
				
				if ((i & sp_DOWN) == 0) {
					p_x = ((p_x >> 2) << 2);
					p_mx = 4;
					p_my = 2;
					p_nu = 0;
					p_sal = 1;
					p_kpress = 1;
					wyz_play_sound (7, 2);
				}
			}
			
			// Slide
			
			if (half_life && !p_sal) {
				if (p_x > 0 && (attr (xx, yy + 1) == 4 ||
					((p_x & 15) != 0 && attr (xx + 1, yy + 1) == 4)) &&
					((p_x & 15) != 0 || ((p_x & 15) == 0 && attr (xx - 1, yy) < 3))) {
					p_x -=2;
					if (fc == 0) wyz_play_sound (2, 2);
					//xx = p_x >> 4;
				}
				
				if (p_x < 224 && (attr (xx, yy + 1) == 5 ||
					((p_x & 15) != 0 && attr (xx + 1, yy + 1) == 5)) &&
					((p_x & 15) != 0 || ((p_x & 15) == 0 && attr (xx + 1, yy) < 3))) {
					p_x +=2;
					if (fc == 0) wyz_play_sound (2, 2);
					//xx = p_x >> 4;
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
				(attr (xx, yy - 1) < 3 && 
				((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (xx + 1, yy - 1) < 3))))) {
					p_y -= p_my;
				}
			}
		} else {
			if ((p_y & 15) != 0) {
				p_y += p_my;
			} else {
				if ((p_y & 15) == 0 && 
					(attr (xx, yy + 1) < 2 && 
					((p_x & 15) == 0 || ((p_x & 15) != 0 && attr (xx + 1, yy + 1) < 2)))) {
					p_y += p_my;
				} else {
					p_sal = 0;
					wyz_play_sound (0, 2);
				}
			}
		}
		
		yy = p_y >> 4;
		
		if (p_facing) {
			if ((p_x & 15) != 0 ||
			(p_x != 0 && (p_x & 15) == 0 &&
			(attr (xx - 1, yy) < 3 &&
			((p_y & 15) == 0 ||
			((p_y & 15) != 0 && attr (xx - 1, yy + 1) < 3))))) {
				p_x -= p_mx;
			}
		} else {
			if ((p_x & 15) != 0 ||
			((p_x & 15) == 0 &&
			(attr (xx + 1, yy) < 3 &&
			((p_y & 15) == 0 ||
			((p_y & 15) != 0 && attr (xx + 1, yy + 1) < 3))))) {
				p_x += p_mx;
			}
		}
		
		p_nu ++;
		if (p_nu == 16) {
			p_sal = 0;
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

unsigned char collide (unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2) {
	unsigned char l1x, l1y, l2x, l2y;
	l1x = (x1 > 12) ? x1 - 12 : 0;
	l2x = x1 + 12;
	l1y = (y1 > 12) ? y1 - 12 : 0;
	l2y = y1 + 12;
	return (x2 >= l1x && x2 <= l2x && y2 >= l1y && y2 <= l2y);
}

void move_enemies () {
	unsigned char i, j, enoffsmasi, xx, yy;
	unsigned char cx, cy;
	unsigned char ccx, ccy;
	unsigned char orientation;

	for (i = 0; i < 3; i ++) {
		enoffsmasi = enoffs + i;
		if (malotes [enoffsmasi].t != 0) {
			cx = malotes [enoffsmasi].x;
			cy = malotes [enoffsmasi].y;	
			malotes [enoffsmasi].x += malotes [enoffsmasi].mx;
			malotes [enoffsmasi].y += malotes [enoffsmasi].my;
			
			ccx = malotes [enoffsmasi].x;
			ccy = malotes [enoffsmasi].y;
			
			if (collide (p_x, p_y, ccx, ccy)) {
				if (p_life > 0) {
					p_life --;
					draw_life ();
					wyz_play_sound (1, 2);
				} 	
			}
			
			if (ccx == malotes [enoffsmasi].x1 || ccx == malotes [enoffsmasi].x2)
				malotes [enoffsmasi].mx = -malotes [enoffsmasi].mx;
			if (ccy == malotes [enoffsmasi].y1 || ccy == malotes [enoffsmasi].y2)
				malotes [enoffsmasi].my = -malotes [enoffsmasi].my;
				
			en_an_count [i] ++; 
			if (en_an_count [i] == 4) {
				en_an_count [i] = 0;
				en_an_frame [i] = !en_an_frame [i];

				// Optimization: 
				//	576 = 512 + 64; x * 576 = (x << 9) + (x << 6)
				//	288 = 256 + 32; x * 288 = (x << 8) + (x << 5)
				//	144 = 128 + 16; x * 144 = (x << 7) + (x << 4)
				// en_an_next_frame [i] = sprite_9_a + 
				//	576 * malotes [enoffsmasi].t + 
				//	144 * en_an_frame [i] + 
				//	288 * (malotes [enoffsmasi].mx < 0 || malotes [enoffsmasi].my < 0);
				
				orientation = (malotes [enoffsmasi].mx < 0 || malotes [enoffsmasi].my < 0);
				en_an_next_frame [i] = sprite_5_a + 
					((malotes [enoffsmasi].t << 9) + (malotes [enoffsmasi].t << 6)) + 
					((en_an_frame [i] << 7) + (en_an_frame [i] << 4)) + 
					((orientation << 8) + (orientation << 5));
			}
		}	
	}
}

void init_hotspots () {
	unsigned char i;
	for (i = 0; i < 25; i ++)
		if (hotspots [i].tipo != 0)
			hotspots [i].act = 1;
}
	
void muerte (unsigned char a, unsigned char b) {
	unsigned char c = 0, i;
	sp_UpdateNow ();
	wyz_play_sound (3, 2);
	for (i=0; i < 100; i++) 	{
		if (sp_GetKey ()) break;
		c = 1 - c;
		if (c) asm_number [0] = a; else asm_number [0] = b;
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
		if (i & 1)
			wyz_play_sound (1, 2);
	}
}

unsigned char rand () {
	unsigned char res;
	
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
		
			ld 	hl, _asm_int
			ld	a,	e	
			ld	(hl), a
			inc	hl
			ld	a,	d
			ld	(hl), a
			
			;; Ahora [ASM_INT] = HL
	#endasm
	
	res = asm_int [0];

	return res;
}

unsigned char game (unsigned char level) {
	unsigned char x, y;
	unsigned char i;
	unsigned char f_win, f_gameover;
	
	//malotes = (MALOTE *) (28375);

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
	
	attrs_byte = 1;
	
	render_screen (x_pant, y_pant);
	
	f_win = f_gameover = 0;

	wyz_play_music (2 + level);
	fc = half_life = 0;
	
	while (!(f_win || f_gameover)) {	
	
		// Move
		
		move ();
		move_enemies ();
		
		// Animate water tiles (cheesy but fast)
		
		i = rand () & 15;
		if (i < n_blobs) {
			blobs [i].v = 1 - blobs [i].v; 
			draw_coloured_tile (VIEWPORT_X + blobs [i].x, VIEWPORT_Y + blobs [i].y, 45 + blobs [i].v);
		}
		
		// Lit somewhat obscured screens
		
		if (y_pant >= yOsc) draw_overlay ((p_x >> 3), (p_y >> 3));
		if (y_pant >= yOsc) draw_buff ();
		if (y_pant >= yOsc) del_overlay ((p_x >> 3), (p_y >> 3));
		
		// erm...
		
		if (p_y > 128) p_y = 128;
		if (p_x > 224) p_x = 224;
		
		// Checks
		i = (joyfunc) (&keys);
		x = p_x >> 4;
		y = p_y >> 4;
		if (p_x == 0) {
			if (((i & sp_LEFT) == 0 || (p_sal && p_facing) || (attr (x, y + 1) == 4 && (i & sp_RIGHT) != 0)) && x_pant > 0) {
				x_pant --;
				p_x = 224;
				render_screen (x_pant, y_pant);
			}
		} else if (p_x == 224) {
			if (((i & sp_RIGHT) == 0 || (p_sal && !p_facing) || (attr (x, y + 1) == 5 && (i & sp_LEFT) != 0)) && x_pant < 4) {
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
		
		if (collide (p_x, p_y, hotspot_x, hotspot_y)) {
			
			draw_coloured_tile (VIEWPORT_X + (hotspot_x >> 3), VIEWPORT_Y + (hotspot_y >> 3), orig_tile);
			hotspot_x = hotspot_y = 240;
			if (hotspots [n_pant].tipo == 1) {
				p_score ++;
				draw_score ();	
				wyz_play_sound (3, 2);
			} else if (hotspots [n_pant].tipo == 2) {
				p_life = p_life > 223 ? 255 : (p_life + 32);
				draw_life ();
				wyz_play_sound (5, 2);
			}
			hotspots [n_pant].act = 0;
		}
		
		// Quitar esto
		/*
		if (sp_KeyPressed (key_z)) {
			p_score ++;
			draw_score ();
			wyz_play_sound (3, 2);
		}
		*/
		
		// Render
		/*
		sp_MoveSprAbs(
			sp_player, 
			spritesClip, 
			p_next_frame - p_current_frame, 
			1 + (p_y >> 3), 
			1 + (p_x >> 3), 
			p_x & 7, 
			p_y & 7
		);
		*/

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
				/*
				x = malotes [enoffs + i].x;
				y = malotes [enoffs + i].y;
				sp_MoveSprAbs (sp_moviles [i], spritesClip, en_an_next_frame [i] - en_an_current_frame [i], VIEWPORT_Y + (y >> 3), VIEWPORT_X + (x >> 3),x & 7, y & 7);
				*/
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
		
		half_life = !half_life;
		fc++; if (fc == 8) fc = 0;
		
		// Update
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
