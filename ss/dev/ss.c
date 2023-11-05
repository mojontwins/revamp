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

#include "binassets.h"

// Modules

#include "printer.h"
#include "128k.h"
#include "wyzplayer.h"
#include "zx0.h"
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

	// Intro
	
	player_on = 1;
	wyz_init ();

	#asm
		ei
	#endasm

	blackout_everything ();
	unpack (scr_mojon_twins_bin, 16384);

	wyz_play_sound (8);
	espera_activa (150);
	
	blackout_everything ();
	unpack (scr_ubhres_bin, 16384);

	wyz_play_sound (7);
	espera_activa (150);

	blackout_everything ();
	unpack (scr_ubhres_bin, 16384);
	
	wyz_play_sound (5);
	espera_activa (1000);
	
	blackout_everything ();
	draw_fast (10, 10, 70, (unsigned char *) ("DEDICATED TO"));
	draw_fast (9, 12, 71, (unsigned char *) ("ENRIC  CERVERA"));
	draw_fast (8, 13, 71, (unsigned char *) ("EMILIO SALGUEIRO"));
	wyz_play_sound (6);
	espera_activa (150);
	
	// Menu
	
	menu ();
}
