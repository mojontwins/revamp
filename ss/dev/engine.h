// Engine phantomoso y phantomero.

// Functions

void __FASTCALL__ espera_activa (int espera) {
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

void __FASTCALL__ init_player (unsigned char level) {
	// Struct LEVEL is 8 bytes wide. 
	#asm
			ld  a, l 				// __FASTCALL__ -> level is in l!
			sla a  					
			sla a  					// A = LEVEL * 4
			sla a 					// A = LEVEL * 8 

			ld  b, 0
			ld  c, a 
			ld  ix, _levels
			add ix, bc 

			ld  a, (ix + 5) 		// .init_x
			ld  (_p_x), a 
			ld  a, (ix + 6) 		// .init_y
			ld  (_p_y), a 
			ld  a, (ix + 7) 		// .init_facing 
			ld  (_p_facing), a 

			xor a 
			ld  (_p_vx), a
			ld  (_p_vy), a
			ld  (_p_sal), a
			ld  (_p_nu), a
			ld  (_p_frame), a
			ld  (_p_score), a

			ld  a, 199
			ld  (_p_life), a 

			ld  hl, _sprite_1_a 
			ld  (_p_next_frame), hl
	#endasm 
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

unsigned char cm_two_points (void) {
	/*
	if (cx1 > 14 || cy1 > 8) at1 = 0; 
	else at1 = map_attr [cx1 + (cy1 << 4) - cy1];

	if (cx2 > 14 || cy2 > 8) at2 = 0; 
	else at2 = map_attr [cx2 + (cy2 << 4) - cy2];
	*/
	#asm
			ld  a, (_cx1)
			cp  15
			jr  nc, _cm_two_points_at1_reset

			ld  a, (_cy1)
			cp  9
			jr  c, _cm_two_points_at1_do

		._cm_two_points_at1_reset
			xor a
			jr  _cm_two_points_at1_done

		._cm_two_points_at1_do
			ld  a, (_cy1)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx1)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_buffer
			add hl, de
			ld  l, (hl) 
			ld  h, 0 
			ld  de, _tile_behaviour
			add hl, de
			ld  a, (hl)

		._cm_two_points_at1_done
			ld (_at1), a

			ld  a, (_cx2)
			cp  15
			jr  nc, _cm_two_points_at2_reset

			ld  a, (_cy2)
			cp  9
			jr  c, _cm_two_points_at2_do

		._cm_two_points_at2_reset
			xor a
			jr  _cm_two_points_at2_done

		._cm_two_points_at2_do
			ld  a, (_cy2)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx2)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_buffer
			add hl, de
			ld  l, (hl) 
			ld  h, 0 
			ld  de, _tile_behaviour
			add hl, de
			ld  a, (hl)

		._cm_two_points_at2_done
			ld (_at2), a
	#endasm
}

void player_bb (void) {
	#asm
			ld  a, (_p_x)
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx1), a
			ld  a, (_p_x)
			add 15
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx2), a
			ld  a, (_p_y)
			srl a
			srl a
			srl a
			srl a
			ld  (_pty1), a
			ld  a, (_p_y)
			add 15
			ld  c, a
			srl a
			srl a
			srl a
			srl a
			ld  (_pty2), a
			ld  a, c 
			inc a
			srl a
			srl a
			srl a
			srl a
			ld  (_pty2b), a
	#endasm
}

// Sound 0 when hit ground
// Sound 7 tall jump
// Sound 8 long jump
// Sound 2 slide, 
// Sound 1 drain life
// attr 1 kill
// attr 2 platform
// attr 3 solid
// attr 4 <-- attr 5 -->

void move (void) {
	gpit = (joyfunc) (&keys);
	rdx = p_x >> 4;
	rdy = p_y >> 4;
	
	// Behold the evil tile!
	
	/*
	player_bb ();
	cx1 = cx2 = ptx1; cy1 = pty1; cy2 = pty2; cm_two_points ();
	gpjt = at1 | at2;
	
	cx1 = cx2 = ptx2; cm_two_points ();
	gpjt |= (at1 | at2);

	if (gpjt == 1) {
		wyz_play_sound (1);
		p_life --;	
		draw_life ();
	}*/

	#asm 
			call _player_bb
			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  (_cx2), a 
			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  a, (_pty2)
			ld  (_cy2), a 
			call _cm_two_points

			ld  a, (_at1)
			ld  c, a
			ld  a, (_at2)
			or  c
			ld  (_gpjt), a 

			ld  a, (_ptx2)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 

			ld  a, (_at1)
			ld  c, a 
			ld  a, (_at2)
			or  c 
			ld  c, a 
			ld  a, (_gpjt)
			or  c 
			and 1

			jr  z, p_evil_done

			// Play SFX_HIT
			ld  hl, SFX_HIT 
			call _play_sfx

			ld  hl, _p_life 
			dec (hl)
			call _draw_life		
		.p_evil_done
	#endasm
	
	// New version: 

	// Vertical axis. Move at will, then check collision & adjust.

	/*
	if (p_sal == 0) {
		// free fall
		p_vy = 8;
	} else {
		// Jump
		if (p_nu < 8) {
			p_vy = -p_jmy;
		} else {
			p_vy = p_jmy; 
		}
	}

	p_y += p_vy;
	*/

	#asm
			ld  a, (_p_sal) 
			or  a 
			jr  nz, mp_v_j

			ld  a, 8
			jr  mp_v_j_done

		.mp_v_j
			ld  a, (_p_nu)
			cp  8

			ld  a, (_p_jmy)
			jr  nc, mp_v_j_done

			neg 

		.mp_v_j_done
			ld  (_p_vy), a 

			ld  c, a 
			ld  a, (_p_y)
			add a, c 
			ld  (_p_y), a
	#endasm

	// Collision.

	/*
	player_bb ();
	
	possee = 0;
	cx1 = ptx1; cx2 = ptx2; 

	// Finish the jump early
	if (p_sal && (p_y & 0xF) == 0) {
		cy1 = cy2 = pty2b;
		cm_two_points ();

		if ((at1 & 0xC) || (at2 & 0xC)) {
			p_sal = 0;
			p_vy = 0;
		}
	}
	*/
	#asm
			// Recalculate bb			
			call _player_bb 

			// Copy the "possee" status
			// To detect landing
			ld  a, (_possee)
			ld  (_rda), a

			xor a 
			ld  (_possee), a

			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  a, (_ptx2)
			ld  (_cx2), a

			// Finish the jump early
			ld  a, (_p_sal) 
			or  a 
			jr  z, mp_v_fje_done

			ld  a, (_p_y)
			and 0xf 
			jr  nz, mp_v_fje_done

			ld  a, (_pty2b)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 

			ld  a, (_at1) 
			and 0xC
			jr  nz, mp_v_fje_do 

			ld  a, (_at2)
			and 0xC 
			jr  z, mp_v_fje_done 

		.mp_v_fje_do
			xor a 
			ld  (_p_sal), a 
			ld  (_p_vy), a

		.mp_v_fje_done
	#endasm
	
	/*
	if (p_vy > 0) {
		cy1 = cy2 = pty2;
		cm_two_points ();

		if ((at1 & 0xC) || (at2 & 0xC)) {
			p_y &= 0xf0; p_vy = 0;
			p_sal = 0;
			possee = 1;
		} 
	} else if (p_vy < 0) {
		cy1 = cy2 = pty1;
		cm_two_points ();

		if (at1 & 0x8 || at2 & 0x8) {
			p_y = 16 + (p_y & 0xf0);
		}
	}
	*/

	#asm
			
		// Check bit 7 (sign) of p_vy to see if PH is going up or down
			ld  a, (_p_vy)
			bit 7, a
			jr  nz, mp_v_chc_up

		.mp_v_chc_down
			// p_vy > 0
			ld  a, (_p_sal)
			or  a 
			jr  z, mp_v_chc_down_check

			ld  a, (_p_y)
			dec a
			and 0xf 
			cp  8
			jr  nc, mp_v_chc_done

		.mp_v_chc_down_check
			ld  a, (_pty2)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 

			ld  a, (_at1)
			and 0xC 
			jr  nz, mp_v_chc_down_coll

			ld  a, (_at2)
			and 0xC
			jr  z, mp_v_chc_done

		.mp_v_chc_down_coll
			ld  a, (_p_y) 
			and 0xf0 
			ld  (_p_y), a 

			xor a 
			ld  (_p_vy), a 
			ld  (_p_sal), a 

			inc a 
			ld  (_possee), a 

			// Detect landing
			ld  a, (_rda)
			or  a 
			jr  nz, mp_v_chc_done

			ld  hl, SFX_LAND
			call _play_sfx

			jr  mp_v_chc_done

		.mp_v_chc_up
			// p_vy < 0
			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 

			ld  a, (_at1)
			and 0x8 
			jr  nz, mp_v_chc_up_coll

			ld  a, (_at2)
			and 0x8
			jr  z, mp_v_chc_done

		.mp_v_chc_up_coll
			ld  a, (_p_y) 
			and 0xf0
			add 16 
			ld  (_p_y), a 

			xor a 
			ld  (_p_vy), a 

			jr  mp_v_chc_done

		.mp_v_chc_done

	#endasm

	// Horizontal axis. Move at will, then check collision & adjust.
	/*
	p_vx = 0;
	
	if (p_sal == 0) {
		if (possee) {
			if ((gpit & sp_LEFT) == 0) {
				p_vx = -2;
				p_facing = 4;
			}

			if ((gpit & sp_RIGHT) == 0) {
				p_vx = 2;
				p_facing = 0;
			}

			if (p_vx) {
				p_frame ++;
				if (p_frame == 4) p_frame = 0;
			}

			// Conveyors

			player_bb ();

			cy1 = cy2 = pty2b;
			cm_two_points ();
			if ((at1 & 16) || (at2 & 16)) {
				p_vx --;
			}

			if ((at1 & 32) || (at2 & 32)) {
				p_vx ++;
			}
		}
	} else {
		// Jump 

		if (p_facing) {
			p_vx = -p_jmx;
		} else {
			p_vx = p_jmx;
		}
	}

	p_x += p_vx;
	*/
	#asm
			xor a 
			ld  (_p_vx), a 

			ld  a, (_p_sal) 
			or  a 
			jr  nz, mp_h_j

			ld  a, (_possee) 
			or  a 
			jr  z, mp_h_j_done

			// if ((gpit & sp_LEFT) == 0)
			ld  a, (_gpit)
			and sp_LEFT
			jr  nz, mp_h_nj_left_done

			ld  a, -2
			ld  (_p_vx), a 
			ld  a, 4 
			ld  (_p_facing), a
		.mp_h_nj_left_done

			// if ((gpit & sp_RIGHT) == 0)
			ld  a, (_gpit)
			and sp_RIGHT
			jr  nz, mp_h_nj_right_done

			ld  a, 2
			ld  (_p_vx), a 
			xor a 
			ld  (_p_facing), a
		.mp_h_nj_right_done

			// if (p_vx)
			ld  a, (_p_vx) 
			or  a 
			jr  z, mp_h_nj_not_moving 

			ld  a, (_p_frame)
			inc a 
			cp  4 
			jr  nz, mp_h_nj_moving_noinc

			xor a

		.mp_h_nj_moving_noinc
			ld  (_p_frame), a 
		.mp_h_nj_not_moving	

			// Conveyors

			call _player_bb 

			ld  a, (_pty2b) 	
			ld  (_cy1), a 
			ld  (_cy2), a 
			// cx1, cx2 were calculated earlier and have not changed

			call _cm_two_points 
			
			ld  hl, _p_vx

			ld  a, (_at1) 
			and 16 
			jr  nz, mp_h_conv_left_do

			ld  a, (_at2)
			and 16 
			jr  z, mp_h_conv_left_done

		.mp_h_conv_left_do
			dec (hl)
		.mp_h_conv_left_done

			ld  a, (_at1) 
			and 32
			jr  nz, mp_h_conv_right_do

			ld  a, (_at2)
			and 32 
			jr  z, mp_h_conv_right_done

		.mp_h_conv_right_do
			inc (hl)
		.mp_h_conv_right_done

			jr  mp_h_j_done

		.mp_h_j
			// Jump 
			ld  a, (_p_facing) 
			or  a 

			ld  a, (_p_jmx)
			jr  z, mp_h_j_right

			neg a 
		.mp_h_j_right
			ld  (_p_vx), a

		.mp_h_j_done

		ld  a, (_p_vx)
		ld  c, a 
		ld  a, (_p_x) 
		add c 
		ld  (_p_x), a
	#endasm

	// Collision

	/*
	player_bb ();

	cy1 = pty1; cy2 = pty2;
	if (p_vx > 0) {
		cx1 = cx2 = ptx2;
		cm_two_points ();

		if((at1 & 0x8) || (at2 & 0x8)) {
			p_x &= 0xf0; 
		}
	} else if (p_vx < 0) {
		cx1 = cx2 = ptx1;
		cm_two_points ();

		if((at1 & 0x8) || (at2 & 0x8)) {
			p_x = 16 + (p_x & 0xf0);
		}
	}
	*/

	#asm
			call _player_bb

			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  a, (_pty2)
			ld  (_cy2), a 

		// Check bit 7 (sign) of p_vx to see if PH is going up or down
		// But first we must make sure it is NOT ZERO
			ld  a, (_p_vx) 
			or  a 
			jr  z, mp_h_chc_done

			bit 7, a 
			jr  nz, mp_h_chc_left

		.mp_h_chc_right
			// p_vx > 0

			ld  a, (_ptx2)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 

			ld  a, (_at1) 
			and 8 
			jr  nz, mp_h_chc_right_coll

			ld  a, (_at2)
			and 8 
			jr  z, mp_h_chc_done 

		.mp_h_chc_right_coll
			ld  a, (_p_x)
			and 0xf0 
			ld  (_p_x), a 

			jr  mp_h_chc_done

		.mp_h_chc_left
			// p_vx < 0

			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 

			ld  a, (_at1) 
			and 8 
			jr  nz, mp_h_chc_left_coll

			ld  a, (_at2)
			and 8 
			jr  z, mp_h_chc_done 

		.mp_h_chc_left_coll
			ld  a, (_p_x)
			and 0xf0 
			add 16
			ld  (_p_x), a 

		.mp_h_chc_done

	#endasm

	// Jump management

	/*
	if (p_sal) {
		p_nu ++; 
		if (p_nu == 16) p_sal = 0;
	} else if (possee) {
		p_nu = 0;

		if ((gpit & sp_UP) == 0) {
			p_jmx = 2; p_jmy = 4; p_sal = 1;
		} else if ((gpit & sp_DOWN) == 0) {
			p_jmx = 4; p_jmy = 2; p_sal = 1;
		}
	}
	*/

	#asm
			ld  a, (_p_sal) 
			or  a 
			jr  z, mp_jm_nsal

			ld  a, (_p_nu)
			inc a 
			ld  (_p_nu), a 
			cp  16
			jr  nz, mp_jm_done

			xor a 
			ld  (_p_sal), a 
			jr  mp_jm_done

		.mp_jm_nsal
			// a is 0
			ld  (_p_nu), a

			ld  a, (_possee)
			or  a 
			jr  z, mp_jm_done

			ld  a, (_gpit) 
			and sp_UP
			jr  nz, mp_jm_up_done

			ld  a, 2
			ld  (_p_jmx), a 
			ld  a, 4 
			ld  (_p_jmy), a 
			ld  a, 1 
			ld  (_p_sal), a

			ld  hl, SFX_JUMP
			call _play_sfx

		.mp_jm_up_done

			ld  a, (_gpit) 
			and sp_DOWN
			jr  nz, mp_jm_done

			ld  a, 4
			ld  (_p_jmx), a 
			ld  a, 2 
			ld  (_p_jmy), a 
			ld  a, 1 
			ld  (_p_sal), a

			ld  hl, SFX_JUMP
			call _play_sfx

		.mp_jm_done
	#endasm

	// Which frame?
	
	if (possee) {
		p_next_frame = player_walk [p_facing + p_frame];
	} else {
		if (p_facing) {
			p_next_frame = sprite_8_a;
		} else {
			p_next_frame = sprite_4_a;
		}
	}
}

unsigned char collide (void) {
	// checks BB_SIZE x BB_SIZE collision between player @ p_x, p_y and whatever is @ rdx, rdy
	#asm
			ld  hl, 0

		// p_x + BB_SIZE >= rdx
			ld  a, (__en_x)
			ld  c, a 
			ld  a, (_p_x)
			add BB_SIZE
			cp  c
			ret c 

		// p_x <= cx2 + BB_SIZE -> cx + BB_SIZE >= p_x
			ld  a, (_p_x)
			ld  c, a 
			ld  a, (__en_x)
			add BB_SIZE
			cp  c 
			ret c

		// p_y + BB_SIZE >= cy2
			ld  a, (__en_y)
			ld  c, a 
			ld  a, (_p_y)
			add BB_SIZE
			cp  c
			ret c 

		// p_y <= cy2 + BB_SIZE -> cy + BB_SIZE >= p_y
			ld  a, (_p_y)
			ld  c, a 
			ld  a, (__en_y)
			add BB_SIZE
			cp  c 
			ret c

			ld  l, 1
	#endasm
}

void calc_baddies_pointer (void) {
	// Calculate a pointer to current baddie. HL should contain be `enoffsmasi`
	// MALOTE struct is 9 bytes wide, hence...

	#asm
			ld  d, h
			ld  e, l 				// DE = x1
			add hl, hl 				// x2
			add hl, hl 				// x4
			add hl, hl 				// x8

			add hl, de 				// HL = x8 + x1 = x9

			ld  de, _malotes
			add hl, de
	#endasm
}

void move_enemies () {
	// Rewrite: Make faster. Make better.

	#asm

		// enoffsmasi = enoffs;
			ld  a, (_enoffs)
			ld  (_enoffsmasi), a 
	
		// for (enit = 0; enit < 3; enit ++) {

			xor a
		.move_enemies_loop
			ld  (_enit), a

		// Copy array values to temp. vars for speed		
	
			ld  hl, (_enoffsmasi)
			ld  h, 0 
			call _calc_baddies_pointer

			ld  (__baddies_pointer), hl 		// Save address for later

			ld  a, (hl)
			ld  (__en_x), a
			inc hl 

			ld  a, (hl)
			ld  (__en_y), a
			inc hl

			ld  a, (hl)
			ld  (__en_x1), a
			inc hl 

			ld  a, (hl)
			ld  (__en_y1), a
			inc hl 

			ld  a, (hl)
			ld  (__en_x2), a
			inc hl 

			ld  a, (hl)
			ld  (__en_y2), a
			inc hl 

			ld  a, (hl)
			ld  (__en_mx), a
			inc hl 

			ld  a, (hl)
			ld  (__en_my), a
			inc hl 

			ld  a, (hl)
			ld  (__en_t), a
		
		// if (_en_t != 0) {

			ld  a, (__en_t)
			or  a 
			jr  nz, update_this_enem	

		.next_enem

			ld  hl, _enoffsmasi
			inc (hl)

		// }
			ld  a, (_enit)
			inc a 
			cp  3
			jr  nz, move_enemies_loop

			ret

		.update_this_enem
		// Update position & check limits

		// _en_x += _en_mx;
			ld  a, (__en_mx)
			ld  c, a
			ld  a, (__en_x)
			add c 
			ld  (__en_x), a
			ld  (_rdx), a

		// _en_y += _en_my;
			ld  a, (__en_my)
			ld  c, a
			ld  a, (__en_y)
			add c 
			ld  (__en_y), a
			ld  (_rdy), a

		// if (_en_x == _en_x1 || _en_x == _en_x2)
			ld  a, (__en_x)
			ld  c, a 
			ld  a, (__en_x1)
			cp  c 
			jr  z, change_en_mx 

			ld  a, (__en_x2)
			cp  c 
			jr  nz, nochange_en_mx

		// _en_mx = -_en_mx;
		.change_en_mx
			ld  a, (__en_mx) 
			neg a
			ld  (__en_mx), a

		.nochange_en_mx

		// if (_en_y == _en_y1 || _en_y == _en_y2)
			ld  a, (__en_y)
			ld  c, a 
			ld  a, (__en_y1)
			cp  c 
			jr  z, change_en_my

			ld  a, (__en_y2)
			cp  c 
			jr  nz, nochange_en_my

		// _en_my = -_en_my;
		.change_en_my
			ld  a, (__en_my) 
			neg a
			ld  (__en_my), a

		.nochange_en_my

		// if (collide ())
			call _collide
			xor a 
			or  l
			jr  z, nocollide_en


			ld  a, (_p_life) 
			or  a 
			jr  z, nocollide_en

			dec a 
			ld  (_p_life), a 

			call _draw_life
			
			ld	hl, SFX_HIT
			call _play_sfx

		.nocollide_en

		// Update sprite cell pointer (animation) 

		/*
		en_an_count [enit] ++; 
		if (en_an_count [enit] == 4) {
			en_an_count [enit] = 0;
			en_an_frame [enit] = !en_an_frame [enit];
			
			rda = (_en_mx < 0 || _en_my < 0);
			en_an_next_frame [enit] = sprite_frames[en_an_base_cell [enit] + (rda << 1) + en_an_frame [enit]];

		}
		*/
			ld  bc, (_enit) 
			ld  b, 0

			ld  hl, _en_an_count
			add hl, bc 
			inc (hl)
			ld  a, (hl)
			cp  4 
			jr  nz, noupd_en_spr

		.upd_en_spr 
			xor a 
			ld  (hl), a 

			ld  hl, _en_an_frame 
			add hl, bc 
			ld  a, (hl) 
			xor 1 
			ld  (hl), a 
			ld  d, a 					// D = FRAME

			ld  e, 0 					// E = FACING

			ld  a, (__en_mx)  	
			bit 7, a  					// Is negative?
			jr  nz, setFacing 

			ld  a, (__en_my) 
			bit 7, a  					// Is negative?
			jr  z, setFacingDone 

		.setFacing 
			ld  e, 2

		.setFacingDone 

			// en_an_next_frame [enit] = sprite_frames[en_an_base_cell [enit] + (rda << 1) + en_an_frame [enit]]
			ld  hl, _en_an_base_cell 
			add hl, bc 
			ld  a, (hl) 
			add d 
			add e 						// A = en_an_base_cell [enit] + FACING + FRAME

			ld  hl, _en_an_next_frame 
			add hl, bc 
			add hl, bc 					// Twice as we are writing to a 16bit array
			ex  de, hl 					// DE -> en_an_next_frame [enit]

			sla a 						// A = A * 2 as we are reading from a 16bit array
			ld  b, 0
			ld  c, a 
			ld  hl, _sprite_frames
			add hl, bc 					// HL -> sprite_frames [A]

			// Copy 16 bits:
			ldi
			ldi

		.noupd_en_spr 

		// Write back changed values to the arrays

			ld  hl, (__baddies_pointer) 		// Restore pointer

			ld  a, (__en_x)
			ld  (hl), a
			inc hl

			ld  a, (__en_y)
			ld  (hl), a
			
			// Skip 4 bytes x1, y1, x2, y2
			ld  bc, 5
			add hl, bc

			ld  a, (__en_mx)
			ld  (hl), a
			inc hl

			ld  a, (__en_my)
			ld  (hl), a

			jp next_enem
	#endasm
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
	rda = a; rdb = b;
	rdc = 0;

	play_sfx (0);
	
	#asm 
			ld  a, 100
			ld  (_gpit), a
		.muerte_loop
			call _any_key
			xor a 
			or  l 

			ret nz 

			ld  a, (_rda) 
			ld  c, a

			ld  a, (_rdc) 
			xor 1 
			jr  z, muerte_nochangecol
			
			ld  hl, SFX_LAND
			call _play_sfx

			ld  a, (_rdb) 

		.muerte_nochangecol

			ld	hl, 22561
			ld	de, 22561
			
			ld	b, 18
			
			halt
				
		.mb1	
			push bc
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

			ld  a, (_gpit)
			or  a

			djnz muerte_loop
	#endasm

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

unsigned char __FASTCALL__ game (unsigned char level) {

	n_pant = levels [level].init_x_pant + 5 * levels [level].init_y_pant;

	load_level (level);

	init_player (level);
	init_hotspots ();

	#asm
			call SPUpdateNow
	#endasm
	blackout_everything ();
	unpack (scr_marcador_bin, 16384);

	draw_life ();
	draw_score ();
	
	o_pant = 0xff;
	f_win = 0;

	// Music 0-3: ingame music
	arkos_play_music (level);
	
	while (1) {	

		// Flick screen
		if (n_pant != o_pant) {
			render_screen ();
			o_pant = n_pant;
		}
	
		// Move
		
		move ();
		move_enemies ();
		
		// Animate water tiles (cheesy but fast)
		
		/*
		gpit = rand () & 15;
		if (gpit < n_blobs) {
			blobs_v [gpit] = 1 - blobs_v [gpit]; 
			_x = blobs_x [gpit]; _y =blobs_y [gpit]; _t = 45 + blobs_v [gpit];
			draw_coloured_tile ();
			invalidate_tile ();
		}
		*/
		#asm
				ld  a, (_n_blobs)
				ld  c, a

				call _rand 
				ld  a, l 
				and 15  		// A = gpit = rand () & 15

				cp  c 
				jr  nc, ml_an_b_done

				// A = gpit
				ld  b, 0 
				ld  c, a 

				ld  hl, _blobs_v 
				add hl, bc 
				ld  a, (hl)
				xor 1 
				ld  (hl), a 

				add 45
				ld  (__t), a 

				ld  hl, _blobs_x 
				add hl, bc 
				ld  a, (hl)
				ld  (__x), a 

				ld  hl, _blobs_y 
				add hl, bc 
				ld  a, (hl)
				ld  (__y), a 

				call _draw_coloured_tile
				call _invalidate_tile				
			.ml_an_b_done
		#endasm

		// Hotspot check

		/*
		rdx = hotspot_x; rdy = hotspot_y;
		if (collide ()) {		
			_x = VIEWPORT_X + (hotspot_x >> 3); _y = VIEWPORT_Y + (hotspot_y >> 3); _t = orig_tile;	
			draw_coloured_tile ();
			invalidate_tile ();

			hotspot_y = 240;
			if (hotspots [n_pant].tipo == 1) {
				p_score ++;
				draw_score ();	
				wyz_play_sound (3);
			} else {
				p_life = p_life > 223 ? 255 : (p_life + 32);
				draw_life ();
				wyz_play_sound (5);
			}
			hotspots [n_pant].act = 0;
		}
		*/

		#asm
				ld  a, (_hotspot_x)
				ld  (__en_x), a 
				ld  a, (_hotspot_y)
				ld  (__en_y), a 
				call _collide 
				
				xor a 
				or  l 
				jr  z, ml_hotspots_done

			.ml_hotspots
				ld  a, (_hotspot_x)
				srl a 
				srl a 
				srl a 
				add VIEWPORT_X
				ld  (__x), a 

				ld  a, (_hotspot_y)
				srl a 
				srl a 
				srl a 
				add VIEWPORT_Y
				ld  (__y), a 

				ld  a, (_orig_tile)
				ld  (__t), a 
				call _draw_coloured_tile
				call _invalidate_tile

				ld  a, 0xf0
				ld  (_hotspot_y), a
		
			.ml_hotspots_fotten

				// hotspots struct is 3 bytes white
				// hotspots [n_pant] is hotspots + n_pant*3
				// Coincidentially, enoffs = n_pant*3 so in
				// showcase of code unreadability we'll hit on that
				ld  bc, (_enoffs)
				ld  b, 0 
				ld  ix, _hotspots 
				add ix, bc 
				push ix

				// Struct is xy, tipo, act
				ld  a, (ix + 1) 	// tipo
				dec a 
				jr  nz, ml_hotspots_t2

				ld  hl, _p_score
				inc (hl)
				call _draw_score

				ld  hl, SFX_OBJECT
				call _play_sfx
				
				jr  ml_hotspots_deact

			.ml_hotspots_t2 
				// p_life = p_life > 223 ? 255 : (p_life + 32);
				ld  a, (_p_life)
				cp  224
				jr  c, ml_inclife

				ld  a, 0xff
				jr  ml_setlife
			
			.ml_inclife	
				add 32

			.ml_setlife
				ld  (_p_life), a

				ld  hl, SFX_LIFE
				call _play_sfx

				call _draw_life

			.ml_hotspots_deact
				pop ix
				xor a 
				ld  (ix + 2), a

			.ml_hotspots_done
		#endasm
		
		// Quitar esto
		
		/*
		if (sp_KeyPressed (key_z)) {
			p_score ++;
			draw_score ();
			wyz_play_sound (3);
		}
		*/
				
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
		
		// Update
		attrs_byte = n_pant >= yOsc;
		if (n_pant >= yOsc) {

			#asm
					ld  a, (_yOsc)
					ld  c, a 
					ld  a, (_n_pant)
					cp  c 

					ld  hl, _attrs_byte 
					jr  c, nohalo

					ld  a, 1
					ld  (hl), a
			#endasm

			// Lit somewhat obscured screens

			#asm
					ld  a, (_p_x)
					srl a 
					srl a 
					srl a 
					sub 3
					ld  (_ovl_x), a
					ld  a, (_p_y)
					srl a 
					srl a 
					srl a 
					sub 3 
					ld  (_ovl_y), a
					call ovl_update
					jr  halodone
	
				.nohalo
					xor a 					
					ld  (hl), a 
				.halodone
			#endasm			
		}

		#asm
			.ml_min_faps_loop
				ld  a, (_isrc)
				cp  2
				jr  nc, ml_min_faps_loop_end
				halt
				jr  ml_min_faps_loop

			.ml_min_faps_loop_end
				xor a
				ld  (_isrc), a
				inc a

				call SPUpdateNow
		#endasm

		
		// The last day on earth:
		
		if (p_life == 0 || sp_KeyPressed (key_g)) {
			arkos_play_music (6);
			muerte (2, 16);
			break;
		}
		
		if (p_score == 15) {
			arkos_play_music (6);
			f_win = 1;	
			break;
		}

		// Should flick?

		/*
		if ((p_x == 0 || p_x > 240) && p_vx < 0) {
			p_x = 224; 
			n_pant --;
		}
		*/
		#asm
				ld  hl, _n_pant

				ld  a, (_p_vx)
				or  a 
				jr  z, flick_left_done
				bit 7, a
				jr  z, flick_left_done 

				ld  a, (_p_x) 
				or  a 
				jr  z, flick_left_do 
				cp  240 
				jr  c, flick_left_done

			.flick_left_do
				ld  a, 224
				ld  (_p_x), a
				dec (hl)
			.flick_left_done
		#endasm

		/*
		if (p_x >= 224 && p_vx > 0) {
			p_x = 0;
			n_pant ++;
		}
		*/

		#asm
				ld  a, (_p_x)
				cp  224
				jr  c, flick_right_done 

				ld  a, (_p_vx)
				or  a 
				jr  z, flick_right_done
				bit  7, a
				jr  nz, flick_right_done
		
			.flick_right_do
				xor a
				ld  (_p_x), a 
				inc (hl)

			.flick_right_done
		#endasm

		/*
		if ((p_y == 0 || p_y > 240) && p_vy < 0 && n_pant > 4) {
			p_y = 128;
			n_pant -= 5;
		}
		*/

		#asm
				// if(n_pant >= 5)
		
			.flick_up_check
				
				// p_vy < 0
				ld  a, (_p_vy)
				or  a 
				jr  z, flick_up_done 
				bit 7, a 
				jr  z, flick_up_done

				ld  a, (_p_y)
				or  a 
				jr  z, flick_up_do 

				cp  240
				jr  c, flick_up_done

			.flick_up_do

				// n_pant > 4 -> n_pant >= 5
				ld  a, (_n_pant)
				cp  5
				jr  c, flick_up_out_of_the_map

				ld  a, 128
				ld  (_p_y), a 
				ld  a, (_n_pant)
				sub 5 
				ld  (_n_pant), a

				ld  a, (_p_nu)
				
				sub 2
				jr  nc, flick_up_set_pnu 

				xor a
			.flick_up_set_pnu
				ld  (_p_nu), a

				jr  flick_up_done

			.flick_up_out_of_the_map
				xor a 
				ld  (_p_y), a
				ld  (_p_vy), a

			.flick_up_done
		#endasm

		/*
		if (p_y >= 128 && p_vy > 0 && n_pant < 20) {
			p_y = 0;
			n_pant += 5;
		}
		*/

		#asm
				ld  a, (_n_pant)
				cp  20
				jr  nc, flick_down_done 

				ld  a, (_p_vy) 
				or  a 
				jr  z, flick_down_done
				bit 7, a 
				jr  nz, flick_down_done

				ld  a, (_p_y)
				cp  128 
				jr  c, flick_down_done

			.flick_down_do
				xor a
				ld  (_p_y), a
				ld  a, (_n_pant)
				add 5 
				ld  (_n_pant), a
			.flick_down_done
		#endasm
	};
	
	return f_win;
}
