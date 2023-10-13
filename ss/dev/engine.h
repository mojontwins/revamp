// Engine phantomoso y phantomero.

// Structs

typedef struct {
	unsigned char x, y;
	char mx, my;
	unsigned char sal, nu;
	unsigned char frame, facing;
	unsigned char life, score;
	unsigned char kpress;
	unsigned char *current_frame, *next_frame;
} PLAYER;

PLAYER player;

unsigned char fc;		// Pseudo frame counter.

// Functions

unsigned char __FASTCALL__ attr (char x, char y) {
	//if (x < 0 || x > 14 || y < 0 || y > 8) return 0;
	return tile_behaviour [map_buffer [(y << 4) - y + x]];	
}

// This should be really faster, but it doesn't seem to work. Ask somebody?
//#define attr(x,y)	tile_behaviour[map_buffer[(y<<4)-y+x]]

char espera_activa (int espera) {
	char res = 1;
	int i;
	
	for (i = 0; i < espera && res; i ++) {
		#asm
			halt
		#endasm
		if (sp_GetKey ()) 
			res = 0;
	}
	return res;
}

void init_player (unsigned char level) {
	player.x = levels [level].init_x;
	player.y = levels [level].init_y;
	player.mx = 0;
	player.my = 0;
	player.sal = 0;
	player.nu = 0;
	player.frame = 0;
	player.facing = levels [level].init_facing;
	player.life = 199;
	player.score = 0;	
	player.next_frame = sprite_1_a;
}

void draw_life () {
	sp_PrintAtInv (22, 24, 71, 246 + (player.life / 100));
	sp_PrintAtInv (22, 25, 71, 246 + (player.life % 100) / 10);
	sp_PrintAtInv (22, 26, 71, 246 + (player.life % 10));
}

void draw_score (void) {
	sp_PrintAtInv (22, 29, 71, 246 + (player.score / 10));
	sp_PrintAtInv (22, 30, 71, 246 + (player.score % 10));
}

unsigned char prefalling;
void move () {
	unsigned char i;
	unsigned char xx, yy;
	unsigned char falling;
	
	i = (joyfunc) (&keys);
	xx = player.x >> 4;
	yy = player.y >> 4;
	
	// Behold the evil tile!
	
	if (attr (xx, yy) == 1 || 
		((player.x & 15) != 0 && attr (xx + 1, yy) == 1) ||
		((player.y & 15) != 0 && attr (xx, yy + 1) == 1) ||
		((player.x & 15) != 0 && (player.y & 15) != 0 && attr (xx + 1, yy + 1) == 1)) {
		if (player.life > 0 && half_life) {
			wyz_play_sound (1, 2);
			player.life --;	
			draw_life ();
		}
	}
	
	
	if (player.sal == 0) {	
		if ((i & sp_UP) && (i & sp_DOWN)) {
			player.kpress = 0;
		}
				
		falling = 0;
		
		if (player.y < 128)
			if (
				(player.y & 15) != 0 ||
				((player.y & 15) == 0 && 
				(attr (xx, yy + 1) < 2 && 
				((player.x & 15) == 0 || ((player.x & 15) != 0 && attr (xx + 1, yy + 1) < 2))))) {
					falling = 1;	
				}
		
		if (prefalling != falling && !falling)
			wyz_play_sound (0, 2);
			
		prefalling = falling;
			
		if (!falling) {	
			
			// Walk
			
			if ((i & sp_LEFT) == 0) {
				if (player.facing == 0) {
					player.facing = 4;
				} else {
					if ((player.x & 15) != 0 ||
					(player.x != 0 && (player.x & 15) == 0 &&
					(attr (xx - 1, yy) < 3 /*&&
					((player.y & 15) == 0 ||
					((player.y & 15) != 0 && attr (xx - 1, yy + 1) < 3))*/))) {
						player.x -= 2;
						player.frame = (player.frame + 1) & 3;
						xx = player.x >> 4;
					}
				}
			}
			
			if ((i & sp_RIGHT) == 0) {
				if (player.facing == 4) {
					player.facing = 0;
				} else {
					if ((player.x & 15) != 0 ||
					((player.x & 15) == 0 &&
					(attr (xx + 1, yy) < 3 /*&&
					((player.y & 15) == 0 ||
					((player.y & 15) != 0 && attr (xx + 1, yy + 1) < 3))*/))) {
						player.x += 2;
						player.frame = (player.frame + 1) & 3;
						xx = player.x >> 4;
					}
				}
			}
			
			// Jump
			
			if (!player.kpress) {
				if ((i & sp_UP) == 0) {
					player.x = ((player.x >> 1) << 1);
					player.mx = 2;
					player.my = 4;
					player.nu = 0;
					player.sal = 1;
					player.kpress = 1;
					wyz_play_sound (8, 2);
				}
				
				if ((i & sp_DOWN) == 0) {
					player.x = ((player.x >> 2) << 2);
					player.mx = 4;
					player.my = 2;
					player.nu = 0;
					player.sal = 1;
					player.kpress = 1;
					wyz_play_sound (7, 2);
				}
			}
			
			// Slide
			
			if (half_life && !player.sal) {
				if (player.x > 0 && (attr (xx, yy + 1) == 4 ||
					((player.x & 15) != 0 && attr (xx + 1, yy + 1) == 4)) &&
					((player.x & 15) != 0 || ((player.x & 15) == 0 && attr (xx - 1, yy) < 3))) {
					player.x -=2;
					if (fc == 0) wyz_play_sound (2, 2);
					//xx = player.x >> 4;
				}
				
				if (player.x < 224 && (attr (xx, yy + 1) == 5 ||
					((player.x & 15) != 0 && attr (xx + 1, yy + 1) == 5)) &&
					((player.x & 15) != 0 || ((player.x & 15) == 0 && attr (xx + 1, yy) < 3))) {
					player.x +=2;
					if (fc == 0) wyz_play_sound (2, 2);
					//xx = player.x >> 4;
				}
			}
			
		} else {
			// Fall and make multiple of 8 //4
			
			player.y += 8;
			//player.y = (player.y >> 2) << 2;
			player.y = (player.y >> 3) << 3;
		}
			
	} else {
		
		// Jumping
		
		if (player.nu < 8) {
			if (player.y > 0) {
				if ((player.y & 15) != 0 ||
				(player.y != 0 && (player.y & 15) == 0 && 
				(attr (xx, yy - 1) < 3 && 
				((player.x & 15) == 0 || ((player.x & 15) != 0 && attr (xx + 1, yy - 1) < 3))))) {
					player.y -= player.my;
				}
			}
		} else {
			if ((player.y & 15) != 0) {
				player.y += player.my;
			} else {
				if ((player.y & 15) == 0 && 
					(attr (xx, yy + 1) < 2 && 
					((player.x & 15) == 0 || ((player.x & 15) != 0 && attr (xx + 1, yy + 1) < 2)))) {
					player.y += player.my;
				} else {
					player.sal = 0;
					wyz_play_sound (0, 2);
				}
			}
		}
		
		yy = player.y >> 4;
		
		if (player.facing) {
			if ((player.x & 15) != 0 ||
			(player.x != 0 && (player.x & 15) == 0 &&
			(attr (xx - 1, yy) < 3 &&
			((player.y & 15) == 0 ||
			((player.y & 15) != 0 && attr (xx - 1, yy + 1) < 3))))) {
				player.x -= player.mx;
			}
		} else {
			if ((player.x & 15) != 0 ||
			((player.x & 15) == 0 &&
			(attr (xx + 1, yy) < 3 &&
			((player.y & 15) == 0 ||
			((player.y & 15) != 0 && attr (xx + 1, yy + 1) < 3))))) {
				player.x += player.mx;
			}
		}
		
		player.nu ++;
		if (player.nu == 16) {
			player.sal = 0;
		}
	}
	
	// Which frame?
	
	if (player.sal || falling) {
		if (player.facing) {
			player.next_frame = sprite_8_a;
		} else {
			player.next_frame = sprite_4_a;
		}
	} else {
		if (player.facing) {
			if (player.frame == 0 || player.frame == 2) {
				player.next_frame = sprite_5_a;
			} else if (player.frame == 1) {
				player.next_frame = sprite_6_a;
			} else {
				player.next_frame = sprite_7_a;
			}	
		} else {
			if (player.frame == 0 || player.frame == 2) {
				player.next_frame =sprite_1_a;
			} else if (player.frame == 1) {
				player.next_frame = sprite_2_a;
			} else {
				player.next_frame = sprite_3_a;
			}	
		}
	}
}

unsigned char __FASTCALL__ collide (unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2) {
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
			
			if (collide (player.x, player.y, ccx, ccy)) {
				if (player.life > 0) {
					player.life --;
					draw_life ();
					wyz_play_sound (1, 2);
				} 	
			}
			
			if (ccx == malotes [enoffsmasi].x1 || ccx == malotes [enoffsmasi].x2)
				malotes [enoffsmasi].mx = -malotes [enoffsmasi].mx;
			if (ccy == malotes [enoffsmasi].y1 || ccy == malotes [enoffsmasi].y2)
				malotes [enoffsmasi].my = -malotes [enoffsmasi].my;
				
			en_an [i].count ++; 
			if (en_an [i].count == 4) {
				en_an [i].count = 0;
				en_an [i].frame = !en_an [i].frame;

				// Optimization: 
				//	576 = 512 + 64; x * 576 = (x << 9) + (x << 6)
				//	288 = 256 + 32; x * 288 = (x << 8) + (x << 5)
				//	144 = 128 + 16; x * 144 = (x << 7) + (x << 4)
				// en_an [i].next_frame = sprite_9_a + 
				//	576 * malotes [enoffsmasi].t + 
				//	144 * en_an [i].frame + 
				//	288 * (malotes [enoffsmasi].mx < 0 || malotes [enoffsmasi].my < 0);
				
				orientation = (malotes [enoffsmasi].mx < 0 || malotes [enoffsmasi].my < 0);
				en_an [i].next_frame = sprite_5_a + 
					((malotes [enoffsmasi].t << 9) + (malotes [enoffsmasi].t << 6)) + 
					((en_an [i].frame << 7) + (en_an [i].frame << 4)) + 
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
	unsigned char terminado = 0;
	unsigned char x_pant, y_pant;
	unsigned char n_pant;
	unsigned char x, y;
	unsigned char i;
	unsigned char f_win, f_gameover;
	int key_g;
	int key_z;
	
	key_g = sp_LookupKey ('g');
	key_z = sp_LookupKey ('z');
	
	//malotes = (MALOTE *) (28375);

	x_pant = levels [level].init_x_pant;
	y_pant = levels [level].init_y_pant;
	
	load_level (level);
	init_player (level);
	init_hotspots ();
	
	sp_ClearRect(spritesClip, 0, 0, sp_CR_TILES); 
	sp_Invalidate(spritesClip, spritesClip); 
	
	sp_UpdateNow ();
	unpack_RAMn (3, SCR_FRAME, 16384, 1);
	
	draw_life ();
	draw_score ();
	#asm
		ld hl, 24999
		ld (hl), 1
	#endasm
	
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
		
		if (y_pant >= yOsc) draw_overlay ((player.x >> 3), (player.y >> 3));
		if (y_pant >= yOsc) draw_buff ();
		if (y_pant >= yOsc) del_overlay ((player.x >> 3), (player.y >> 3));
		
		// erm...
		
		if (player.y > 128) player.y = 128;
		if (player.x > 224) player.x = 224;
		
		// Checks
		i = (joyfunc) (&keys);
		x = player.x >> 4;
		y = player.y >> 4;
		if (player.x == 0) {
			if (((i & sp_LEFT) == 0 || (player.sal && player.facing) || (attr (x, y + 1) == 4 && (i & sp_RIGHT) != 0)) && x_pant > 0) {
				x_pant --;
				player.x = 224;
				render_screen (x_pant, y_pant);
			}
		} else if (player.x == 224) {
			if (((i & sp_RIGHT) == 0 || (player.sal && !player.facing) || (attr (x, y + 1) == 5 && (i & sp_LEFT) != 0)) && x_pant < 4) {
				x_pant ++;
				player.x = 0;
				render_screen (x_pant, y_pant);
			}
		}
		
		if (player.y == 0) {
			if (player.sal == 1 && y_pant > 0 && player.nu < 7) {
				y_pant --;
				player.y = 128;
				player.nu --;
				render_screen (x_pant, y_pant);
			}
		} else if (player.y == 128) {
			if ((player.sal == 0 || player.nu > 8) && y_pant < 4) {
				y_pant ++;
				player.y = 0;
				render_screen (x_pant, y_pant);
			}	
		}
		
		if (collide (player.x, player.y, hotspot_x, hotspot_y)) {
			n_pant = y_pant * 5 + x_pant;
			draw_coloured_tile (VIEWPORT_X + (hotspot_x >> 3), VIEWPORT_Y + (hotspot_y >> 3), orig_tile);
			hotspot_x = hotspot_y = 240;
			if (hotspots [n_pant].tipo == 1) {
				player.score ++;
				draw_score ();	
				wyz_play_sound (3, 2);
			} else if (hotspots [n_pant].tipo == 2) {
				player.life = player.life > 223 ? 255 : (player.life + 32);
				draw_life ();
				wyz_play_sound (5, 2);
			}
			hotspots [n_pant].act = 0;
		}
		
		// Quitar esto
		/*
		if (sp_KeyPressed (key_z)) {
			player.score ++;
			draw_score ();
			wyz_play_sound (3, 2);
		}
		*/
		
		// Render
		sp_MoveSprAbs(sp_player, spritesClip, player.next_frame - player.current_frame, 1 + (player.y >> 3), 1 + (player.x >> 3), player.x & 7, player.y & 7);
		player.current_frame = player.next_frame;
		
		for (i = 0; i < 3; i ++) {
			if (malotes [enoffs + i].t != 0) {		// Esto sólo es necesario si hay habitaciones con menos de 3.
				x = malotes [enoffs + i].x;
				y = malotes [enoffs + i].y;
				sp_MoveSprAbs (sp_moviles [i], spritesClip, en_an [i].next_frame - en_an [i].current_frame, VIEWPORT_Y + (y >> 3), VIEWPORT_X + (x >> 3),x & 7, y & 7);
				en_an [i].current_frame = en_an [i].next_frame;
			}
		}
		
		half_life = !half_life;
		fc++; if (fc == 8) fc = 0;
		
		// Update
		sp_UpdateNow ();
		
		// The last day on earth:
		
		if (player.life == 0 || sp_KeyPressed (key_g)) {
			wyz_stop_sound ();
			muerte (2, 16);
			f_gameover = 1;
		}
		
		if (player.score == 15) {
			wyz_stop_sound ();
			f_win = 1;	
		}
	};
	
	return f_win;
}
