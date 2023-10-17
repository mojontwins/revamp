void espera_activa (int espera);
unsigned char game (unsigned char level);

// Menu stuff. Doesn't matter if it falls into contended RAM.

/*
unsigned char *name_level1 = "  JUNKYARD  ";
unsigned char *name_level2 = "  DEAD JOE  ";
unsigned char *name_level3 = "SEVERAL SINS";
unsigned char *name_level4 = "KEWPIE  DOLL";
unsigned char *name_levels [4] = {name_level1, name_level2, name_level3, name_level4};
*/
extern unsigned char name_level1 [0];
extern unsigned char name_level2 [0];
extern unsigned char name_level3 [0];
extern unsigned char name_level4 [0];

extern unsigned char pass1 [0];
extern unsigned char pass2 [0];
extern unsigned char pass3 [0];

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
#endasm

unsigned char *cad_level = "LEVEL 0X";

void start_game_from (unsigned char level) {
	// Game controller	
	
	wyz_stop_sound ();
	
	while (1) {
		// Show level
		
		blackout_everything ();
		get_resource (RAM3_MENU_BIN, 16384);

		wyz_play_music (1);	
		cad_level [7] = '1' + level;
		draw_char_by_char (12, 11, cad_level);
		draw_char_by_char (10, 13, name_levels [level]);
		
		if (level > 0) {
			draw_fast (12, 15, 70, (unsigned char *) ("PASSWORD"));
			draw_fast (level == 2 ? 11 : 12, 16, 70, passes [level - 1]);
		}
		
		espera_activa (250);
		wyz_stop_sound ();
				
		if (game (level)) {
			level ++;
			if (level == 4)  {
				sp_WaitForNoKey ();
				// Final
				blackout_everything ();
				get_resource (RAM3_FINAL_BIN, 16384);

				wyz_play_music (0);
				espera_activa (32767);
				break;
			}
		} else {
			break;
		}
	}
}

unsigned char password [32];

unsigned char get_password () {
	blackout_everything ();
	get_resource (RAM3_MENU_BIN, 16384);
	draw_fast (9, 11, 70, (unsigned char *) ("ENTER PASSWORD"));
	
	rda = 0;
	password [rda] = '#';
	password [rda + 1] = 0;
	while (1) {
		draw_fast (16 - (rda >> 1), 13, 71, password);
		
		do {
			rdb = sp_GetKey ();
		} while (!rdb);
		
		if (rdb == 12 && rda > 0) {
			password [rda] = ' ';
			draw_fast (5, 13, 71, (unsigned char *) ("                       "));
			rda --;
			password [rda] = '#';
			password [rda + 1] = 0;
		}
		
		if (rdb == 13) {
			break;
		}
		
		if (rdb > 'Z') rdb -= 32;
		
		if (rdb >= 'A' && rdb <= 'Z' && rda < 20) {
			password [rda] = rdb;
			password [rda + 1] = '#';
			password [rda + 2] = 0;
			rda ++;
		}
		
		sp_WaitForNoKey ();
	}
	
	password [rda] = 0;
	
	if (rda > 0) {
		for (gpjt = 0; gpjt < 3; gpjt ++) {
			gen_pt = passes [gpjt];
			for (gpit = 0; gpit < rda; gpit ++) {
				if (gen_pt [gpit] != password [gpit]) {
					break;
				}
			}	
			if (gpit == rda) {
				return 1 + gpjt;
			}
		}
	}
	
	return 0;
}

void menu (void) {
	denew = 1;
	
	while (1) {
		
		// Show menu screen
		if (denew) {
			blackout_everything ();
			get_resource (RAM3_MENU_BIN, 16384);
		
			// Play ASTRO GANGA
			wyz_play_music (0);
			denew = 0;
		}
	
		// Text
		draw_fast (7, 21, 71, (unsigned char *) ("C MOJON TWINS 2011"));
			
		// Show menu options
		draw_fast (11, 12, 70, (unsigned char *) ("1 PLAY    "));
		draw_fast (11, 13, 70, (unsigned char *) ("2 PASSWORD"));
		draw_fast (11, 14, 70, (unsigned char *) ("3 CONTROLS"));
		
		while (1) {
			rdb = sp_GetKey ();
			if (rdb == '1') {
				start_game_from (0);
				denew = 1;
				break;
			} else if (rdb == '2') {
				sp_WaitForNoKey ();
				start_game_from (get_password ());
				denew = 1;
				break;
			} else if (rdb == '3') {
				sp_WaitForNoKey ();
				draw_fast (11, 12, 70, (unsigned char *) ("1 KEYBOARD"));
				draw_fast (11, 13, 70, (unsigned char *) ("2 SINCLAIR"));
				draw_fast (11, 14, 70, (unsigned char *) ("3 KEMPSTON"));
				
				while (1) {
					rdb = sp_GetKey ();
					if (rdb == '1') {
						joyfunc = (void *)sp_JoyKeyboard;
						break;
					} else if (rdb == '2') {
						joyfunc = (void *)sp_JoySinclair1;
						break;
					} else if (rdb == '3') {
						joyfunc = (void *)sp_JoyKempston;
						break;
					}
				}

				sp_WaitForNoKey ();
				break;
			}
		}
	}
}