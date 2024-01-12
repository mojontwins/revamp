void espera_activa (int espera);
unsigned char game (void);

extern unsigned char name_level1 [0];
extern unsigned char name_level2 [0];
extern unsigned char name_level3 [0];
extern unsigned char name_level4 [0];

extern unsigned char pass1 [0];
extern unsigned char pass2 [0];
extern unsigned char pass3 [0];

extern unsigned char password [0];

unsigned char *name_levels [4] = {name_level1, name_level2, name_level3, name_level4};
unsigned char *passes [3] = {pass1, pass2, pass3};

#asm
	._name_level1
		defm "  JUNKYARD  "
		defb 0
	._name_level2
		defm "  DEAD JOE  "
		defb 0
	._name_level3
		defm "SEVERAL SINS"
		defb 0
	._name_level4
		defm "KEWPIE  DOLL"
		defb 0
	._pass1
		defm "TORTILLA"
		defb 0
	._pass2
		defm "CORCHONETA"
		defb 0
	._pass3
		defm "ENCUERA"
		defb 0
	._password
		defs 12
#endasm

unsigned char *cad_level = "LEVEL 0X";

void start_game_from (void) {
	// Game controller	
	
	arkos_play_music (6);
	
	while (1) {
		// Show level
		
		blackout_everything ();
		unpack (scr_menu_bin, (unsigned char *) (0x4000));

		// Play "Ganga"
		arkos_play_music (4);

		cad_level [7] = '1' + level;
		_x = 12; _y = 11; str_pt = cad_level; draw_char_by_char ();
		_x = 10; _y = 13; str_pt = name_levels [level]; draw_char_by_char ();
		
		if (level > 0) {
			_x = 12; _y = 15; _c = 70; str_pt = (unsigned char *) ("PASSWORD"); draw_fast ();
			_x = level == 2 ? 11 : 12; _y = 16; _c = 70; str_pt = passes [level - 1]; draw_fast ();
		}
		
		espera_activa (250);
		arkos_play_music (6);
				
		if (game (level)) {
			level ++;
			if (level == 4)  {
				while(any_key ());
				// Final
				blackout_everything ();
				unpack (scr_final_bin, (unsigned char *) (0x4000));

				_x = 8; _y = 19; _c = 71; str_pt = (unsigned char *) ("ESTA NOCHE PAJA!"); draw_fast ();

				// Play "money"
				arkos_play_music (5);

				espera_activa (32767);
				break;
			}
		} else {
			break;
		}
	}
}

unsigned char get_password () {
	blackout_everything ();
	unpack (scr_menu_bin, (unsigned char *) (0x4000));

	_x = 9; _y = 11; _c = 70; str_pt = (unsigned char *) ("ENTER PASSWORD"); draw_fast ();
	
	rda = 0; 
	password [rda] = '#';
	password [rda + 1] = 0;
	while (1) {
		_x = 16 - (rda >> 1); _y = 13; _c = 71; str_pt = password; draw_fast ();
		
		//while(!any_key ());
		rdb = sp_GetKey(); if (rdb) {

			if (rdb == 12 && rda > 0) {
				password [rda] = ' ';
				
				_x = 5; _y = 13; _c = 71; str_pt = (unsigned char *) ("                       "); draw_fast ();
				
				rda --;
				password [rda] = '#';
				password [rda + 1] = 0;
			}
			
			if (rdb == 13) {
				break;
			}
			
			if (rdb > 'Z') rdb -= 32;
			
			if (rdb >= 'A' && rdb <= 'Z' && rda < 10) {
				password [rda] = rdb;
				password [rda + 1] = '#';
				password [rda + 2] = 0;
				rda ++;
				
			}
			
			while (any_key ());
		}
	}

	// Check password

	#asm
			ld  a, (_rda)
			ld  b, 0 
			ld  c, a 
			ld  hl, _password 
			add hl, bc 
			xor a 
			ld  (hl), a 
			ld  (_level), a

		.passcheck
			ld  a, (_rda) 
			or  a 
			jr  z, passcheck

			ld  a, 6
		.passcheck_l1
			sub 2
			ld  (_gpjt), a
			ld  b, 0
			ld  c, a

			// gen_pt = passes [gpjt]
			ld  hl, _passes 
			add hl, bc 
			ld  a, (hl)
		 	inc hl 
		 	ld  h, (hl) 
		 	ld  l, a 
		 	ld  (_gen_pt), hl 

		 	ld  bc, 0
		.passcheck_l2 
		 	ld  hl, _password 
		 	add hl, bc 
		 	ld  a, (hl) 
		 	ld  d, a 
		 	ld  hl, (_gen_pt)
		 	add hl, bc 
		 	ld  a, (hl)
		 	cp  d 

		 	// Cur char !=, next pass
		 	jr  nz, passnext 

		 	// loop gpit < rda -> exit if rda == gpit
		 	inc c 
		 	ld  a, (_rda)
		 	cp  c 
		 	jr  z, passcorrect
		 	jr  passcheck_l2

		 .passcorrect 
		 	ld  a, (_gpjt) 
		 	srl a 
		 	inc a 
		 	ld  (_level), a 
		 	ret

		 .passnext
			ld  a, (_gpjt) 
			or  a
			jr  nz, passcheck_l1

		.passcheckdone
	#endasm
	
}

void menu (void) {
	denew = 1;
	
	while (1) {
		while (any_key ());

		// Show menu screen
		if (denew) {
			blackout_everything ();
			unpack (scr_menu_bin, (unsigned char *) (0x4000));
		
			// Play "Money"
			arkos_play_music (5);
			denew = 0;
		}
	
		// Text
		_x = 4; _y = 21; _c = 71; str_pt = (unsigned char *) ("] MOJON TWINS 2011, 2024"); draw_fast ();
			
		// Show menu options
		_x = 11; _y = 12; _c = 70; str_pt = (unsigned char *) ("1 PLAY    "); draw_fast ();
		_x = 11; _y = 13; str_pt = (unsigned char *) ("2 PASSWORD"); draw_fast ();
		_x = 11; _y = 14; str_pt = (unsigned char *) ("3 CONTROLS"); draw_fast ();
		
		while (1) {
			if (sp_KeyPressed (key_1)) {
				level = 0;
				start_game_from ();
				denew = 1;
				break;
			} else if (sp_KeyPressed (key_2)) {
				get_password ();
				start_game_from ();
				denew = 1;
				break;
			} else if (sp_KeyPressed (key_3)) {
				while(any_key ());

				while(1) {
					_x = 11; _y = 12; _c = 70; str_pt = (unsigned char *) ("1 KEYBOARD"); draw_fast ();
					_x = 11; _y = 13; str_pt = (unsigned char *) ("2 SINCLAIR"); draw_fast ();
					_x = 11; _y = 14; str_pt = (unsigned char *) ("3 KEMPSTON"); draw_fast ();
					
					if (sp_KeyPressed (key_1)) {
						joyfunc = (void *) sp_JoyKeyboard; break;
					} else if (sp_KeyPressed (key_2)) {
						joyfunc = (void *) sp_JoySinclair1; break;
					} else if (sp_KeyPressed (key_3)) {
						joyfunc = (void *) sp_JoyKempston; break;
					}	
				}

				break;
			}
		}
	}
}