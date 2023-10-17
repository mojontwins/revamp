// Phantomas Tales #4: Severin Sewers

#asm
		LIB SPMoveSprAbs
		LIB SPPrintAtInv
		LIB SPTileArray
		LIB SPInvalidate
		LIB SPCompDListAddr
#endasm

#include "printer.h"
#include <spritepack.h>

#pragma output STACKPTR=23999
#define FREEPOOL		61697

#define VIEWPORT_X		1
#define VIEWPORT_Y		1
#define MAX_BLOBS		20

// Globals

#include "globals.h"

// Extra RAM imports

#include "librarian.h"

// Modules

#include "128k.h"
#include "wyzplayer.h"
#include "aplib.h"
#include "menu.h"
#include "supertileset.h"
#include "tileset.h"
#include "spriteset.h"
#include "overlay.h"
#include "leveldata.h"
#include "levelstruct.h"
#include "engine.h"
 
// Main

void main (void) {
	
	// Install ISR

	#asm
		di
	#endasm

	sp_InitIM2(0xf1f1);
	sp_CreateGenericISR(0xf1f1);
	sp_RegisterHook(255, ISR);
		
	#asm
		ei
	#endasm

	// Init splib2
	
	sp_Initialize (7, 0);
	sp_Border (BLACK);
	sp_AddMemory(0, 40, 15, AD_FREE);

	// Control scheme: default keyboard
		
	joyfunc = (void *)sp_JoyKeyboard;

	// Load tileset

	gen_pt = tileset;
	gpit = 0; do {
		sp_TileArray (gpit, gen_pt);
		gen_pt += 8;
		gpit ++;		
	} while (gpit);

	// Create sprites

	sp_player = sp_CreateSpr (sp_MASK_SPRITE, 3, sprite_1_a);
	sp_AddColSpr (sp_player, sprite_1_b);
	sp_AddColSpr (sp_player, sprite_1_c);
	p_current_frame = p_next_frame = sprite_1_a;
	
	for (gpit = 0; gpit < 3; gpit ++) {
		sp_moviles [gpit] = sp_CreateSpr(sp_MASK_SPRITE, 3, sprite_9_a);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_b);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_c);	
		en_an_current_frame [gpit] = en_an_next_frame [gpit] = sprite_9_a;
	}

	// Intro
	
	play_music = 1;

	blackout_everything ();
	get_resource (RAM3_MOJON_TWINS_BIN, 16384);

	wyz_play_sound (8, 2);
	espera_activa (150);
	
	blackout_everything ();
	get_resource (RAM3_UBHRES_BIN, 16384);

	wyz_play_sound (7, 2);
	espera_activa (150);

	blackout_everything ();
	get_resource (RAM3_SHEET_BIN, 16384);
	
	wyz_play_sound (5, 2);
	espera_activa (1000);
	
	blackout_everything ();
	draw_fast (10, 10, 70, (unsigned char *) ("DEDICATED TO"));
	draw_fast (9, 12, 71, (unsigned char *) ("ENRIC  CERVERA"));
	draw_fast (8, 13, 71, (unsigned char *) ("EMILIO SALGUEIRO"));
	wyz_play_sound (6, 2);
	espera_activa (150);
	
	// Menu
	
	menu ();
}
