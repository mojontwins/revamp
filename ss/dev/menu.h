char espera_activa (int espera);
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
	unsigned char i;
	unsigned char play = 1;
	
	wyz_stop_sound ();
	
	while (play) {
		// Show level
		unpack_RAMn (3, SCR_MENU, 16384, 1);
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
		
		i = game (level);
		if (i) {
			level ++;
			if (level == 4)  {
				sp_WaitForNoKey ();
				// Final
				unpack_RAMn (3, SCR_FINAL, 16384, 1);
				wyz_play_music (0);
				espera_activa (32767);
				play = 0;
			}
		} else {
			play = 0;
		}
	}
}

unsigned char password [32];

unsigned char get_password () {
	unsigned char res = 0;
	unsigned char len = 0;
	unsigned char terminado = 0;
	unsigned char key, i, j;
	unsigned char *thispass;
	
	unpack_RAMn (3, SCR_MENU, 16384, 0);
	draw_fast (9, 11, 70, (unsigned char *) ("ENTER PASSWORD"));
	
	password [len] = '#';
	password [len + 1] = 0;
	while (!terminado) {
		draw_fast (16 - (len >> 1), 13, 71, password);
		
		do {
			key = sp_GetKey ();
		} while (!key);
		
		if (key == 12 && len > 0) {
			password [len] = ' ';
			draw_fast (5, 13, 71, (unsigned char *) ("                       "));
			len --;
			password [len] = '#';
			password [len + 1] = 0;
		}
		
		if (key == 13) {
			terminado = 1;
		}
		
		if (key > 'Z') key -= 32;
		
		if (key >= 'A' && key <= 'Z' && len < 20) {
			password [len] = key;
			password [len + 1] = '#';
			password [len + 2] = 0;
			len ++;
		}
		
		sp_WaitForNoKey ();
	}
	
	password [len] = 0;
	
	if (len > 0) {
		for (j = 0; j < 3; j ++) {
			thispass = passes [j];
			for (i = 0; i < len; i ++) {
				if (thispass [i] != password [i]) {
					break;
				}
			}	
			if (i == len) {
				res = 1 + j;
				break;
			}
		}
	}
	
	return res;
}

void menu (void) {
	unsigned char i, key;
	unsigned char fl1, fl2;
	unsigned char denew = 1;
	
	while (1) {
		
		// Show menu screen
		if (denew) {
			unpack_RAMn (3, SCR_MENU, 16384, 1);
		
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
		
		fl1 = 0;
		while (!fl1) {
			key = sp_GetKey ();
			if (key == '1') {
				start_game_from (0);
				denew = 1;
				fl1 = 1;
			} else if (key == '2') {
				sp_WaitForNoKey ();
				start_game_from (get_password ());
				denew = 1;
				fl1 = 1;
			} else if (key == '3') {
				sp_WaitForNoKey ();
				draw_fast (11, 12, 70, (unsigned char *) ("1 KEYBOARD"));
				draw_fast (11, 13, 70, (unsigned char *) ("2 SINCLAIR"));
				draw_fast (11, 14, 70, (unsigned char *) ("3 KEMPSTON"));
				fl2 = 0;
				while (!fl2) {
					key = sp_GetKey ();
					if (key == '1') {
						joyfunc = (void *)sp_JoyKeyboard;
						fl2 = 1;
					} else if (key == '2') {
						joyfunc = (void *)sp_JoySinclair1;
						fl2 = 1;
					} else if (key == '3') {
						joyfunc = (void *)sp_JoyKempston;
						fl2 = 1;
					}
				}
				sp_WaitForNoKey ();
				fl1 = 1;
			}
		}
	}
}