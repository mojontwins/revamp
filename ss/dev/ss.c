// Phantomas Tales #4: Severin Sewers

#asm
		LIB SPMoveSprAbs
		LIB SPPrintAtInv
		LIB SPTileArray
		LIB SPInvalidate
		LIB SPCompDListAddr
		LIB SPNullSprPtr
		LIB SPUpdateNow
#endasm

#include <spritepack.h>

#pragma output STACKPTR=23999
#define FREEPOOL		61697

#define VIEWPORT_X		1
#define VIEWPORT_Y		1
#define MAX_BLOBS		20
#define NUMBLOCKS 		40

unsigned char AD_FREE [NUMBLOCKS*15];		

#define BB_SIZE 8

// Globals

#include "globals.h"

// Extra RAM imports

extern unsigned char c_level_1_bin [0];
extern unsigned char c_level_2_bin [0];
extern unsigned char c_level_3_bin [0];
extern unsigned char c_level_4_bin [0];
extern unsigned char scr_mojon_twins_bin [0];
extern unsigned char scr_ubhres_bin [0];
extern unsigned char scr_sheet_bin [0];
extern unsigned char scr_menu_bin [0];
extern unsigned char scr_marcador_bin [0];
extern unsigned char scr_final_bin [0];

// Modules

#include "128k.h"
#include "sound.h"
#include "zx0.h"
#include "printer.h"
#include "menu.h"
#include "supertileset.h"
#include "tileset.h"
#include "spriteset.h"

unsigned char *player_walk[] = {
	sprite_1_a, sprite_2_a, sprite_1_a, sprite_3_a,
	sprite_5_a, sprite_6_a, sprite_5_a, sprite_7_a
};

unsigned char *sprite_frames[] = {
	sprite_9_a, sprite_10_a, sprite_11_a, sprite_12_a,
	sprite_13_a, sprite_14_a, sprite_15_a, sprite_16_a,
	sprite_17_a, sprite_18_a, sprite_19_a, sprite_20_a,
	sprite_21_a, sprite_22_a, sprite_23_a, sprite_24_a,
};

#include "new_overlay.h"
#include "leveldata.h"
#include "levelstruct.h"
#include "engine.h"
 
// Main

void main (void) {
	
	// Install ISR

	#asm
		di
		xor a 
		out (254), a
	#endasm

	sp_InitIM2(0xf1f1);
	sp_CreateGenericISR(0xf1f1);
	sp_RegisterHook(255, ISR);

	// Init splib2
	
	sp_Initialize (0, 0);
	sp_AddMemory(0, 40, 14, AD_FREE);

	// Control scheme: default keyboard
		
	joyfunc = (void *)sp_JoyKeyboard;

	// Load tileset
	#asm
			ld  b, 0
			ld  hl, SPTileArray
			ld  de, _tileset
		.load_tileset_loop
			ld  (hl), e
			inc h
			ld  (hl), d
			dec h
			inc hl
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			djnz load_tileset_loop
	#endasm

	// Create sprites

	sp_player = sp_CreateSpr (sp_MASK_SPRITE, 3, sprite_1_a);
	sp_AddColSpr (sp_player, sprite_1_b);
	sp_AddColSpr (sp_player, sprite_1_b);	// This is a dummy and will be overwritten later
	p_current_frame = p_next_frame = sprite_1_a;
	
	for (gpit = 0; gpit < 3; gpit ++) {
		sp_moviles [gpit] = sp_CreateSpr(sp_MASK_SPRITE, 3, sprite_9_a);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_b);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_b);	// This is a dummy and will be overwritten later
		en_an_current_frame [gpit] = en_an_next_frame [gpit] = sprite_9_a;
	}

	// Create a virtual, non existent third column for sprites.
	
	#asm
		.fix_sprites
			ld  b, 6

			ld  hl, (_sp_player) 			// Sprite base pointer
			call _fix_sprites

			ld  de, _sp_moviles
			ld  b, 3

		.fix_sprites_rep1
			push bc
			ld  a, (de)
			ld  l, a
			inc de 
			ld  a, (de)
			ld  h, a
			inc de 

			ld  b, 6
			call _fix_sprites

			pop bc 
			djnz fix_sprites_rep1
	#endasm

	// Spectrum model detection

	#asm
			ld  bc, 0x7ffd
			xor a
			out (c), a
			ld  a, (0x1)
			ld  h, a
			ld  a, 0x10
			out (c), a
			ld  a, (0x1)
			cp  h
			jr  z, no128K

			// 128K model!
			call _arkos_init

			ld  a, 1 
			jr  detection_done

		.no128K
			xor a
		
		.detection_done
			ld  (_is128k), a

			ei
	#endasm

	// Intro
	arkos_play_music (6);

	blackout_everything ();
	unpack (scr_mojon_twins_bin, 16384);

	play_sfx (3);
	espera_activa (150);
	
	blackout_everything ();
	unpack (scr_ubhres_bin, 16384);

	play_sfx (3);
	espera_activa (150);

	blackout_everything ();
	unpack (scr_sheet_bin, 16384);
	
	play_sfx (3);
	espera_activa (1000);
	
	blackout_everything ();
	_x = 10; _y = 10; _c = 70; str_pt = (unsigned char *) ("DEDICATED TO"); draw_fast ();
	_x = 9; _y = 12; _c = 71; str_pt = (unsigned char *) ("ENRIC  CERVERA"); draw_fast ();
	_x = 8; _y = 13; str_pt = (unsigned char *) ("EMILIO SALGUEIRO"); draw_fast ();
	play_sfx (4);
	espera_activa (150);
	
	// Menu
	
	menu ();
}

// Lots of compressed shit at the end...
#include "binassets.h"
