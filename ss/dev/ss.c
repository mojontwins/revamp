// Right @ the beginning, sits in contended RAM @30000

#include "printer.h"

// And from 32768 onwards goes this...

// Phantomas Tales #4: Severin Sewers

#include <spritepack.h>

#pragma output STACKPTR=23999
#define FREEPOOL		61697

#define VIEWPORT_X		1
#define VIEWPORT_Y		1
#define MAX_BLOBS		20

// RAM3

#define SCR_FRAME		49152
#define SCR_MOJON		49639
#define SCR_UBHRES		50000
#define SCR_MENU		51203
#define SCR_FINAL		52048
#define SCR_SHEET		53248

// Globals

extern unsigned char level_buffer[0];
#asm
	._level_buffer defs 4275
#endasm

extern unsigned char AD_FREE[0];
#asm
	._AD_FREE defs 40 * 15
#endasm

struct sp_UDK keys;										// Keys structure.
unsigned int (*joyfunc)(struct sp_UDK *);				// Controls.
void *my_malloc(uint bytes) {return sp_BlockAlloc(0);}	// malloc routines
void *u_malloc = my_malloc;								// I wonder what
void *u_free = sp_FreeBlock;							// those do...
struct sp_SS *sp_player;								// Player sprites
struct sp_SS *sp_moviles [3];							// Enemy sprites
struct sp_Rect spritesClipValues;						// Clipping values
struct sp_Rect *spritesClip;							// Clipping rectangle
extern char asm_number[1];
extern unsigned int asm_int [1];
extern unsigned int asm_int_2 [1];
extern unsigned int seed [1];
unsigned char half_life;
unsigned int key_r;
unsigned char enoffs;

#asm
._asm_number 
	defb 0
._asm_int
	defw 0
._asm_int_2
	defw 0
._seed	
	defw 0
#endasm

// Modules

unsigned char gpit;
unsigned char *gen_pt;

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
	malotes = (MALOTE *) (ENEMS_DATA);
	hotspots = (HOTSPOT *) (HOTSPOTS_DATA);
	
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

	// Keys
	
	keys.right = 0x01df; 	// sp_LookupKey('p');
	keys.left  = 0x02df; 	// sp_LookupKey('o');
	keys.up    = 0x01fb; 	// sp_LookupKey('q');
	keys.down  = 0x01fd; 	// sp_LookupKey('a');
	keys.fire  = 0x017f; 	// sp_LookupKey(' ');
	key_r = 0x08fb;			// sp_LookupKey ('r');

	// Control scheme: default keyboard
		
	joyfunc = (void *)sp_JoyKeyboard;

	// Load tileset
		
	gen_pt = tileset;
	gpit = 0; do {
		sp_TileArray (gpit, gen_pt);
		gen_pt += 8;
		gpit ++;		
	} while (gpit);
#asm
	ld a, 3
	out(254),a
#endasm		
	// Clipping rectangle

	spritesClipValues.row_coord = VIEWPORT_Y;
	spritesClipValues.col_coord = VIEWPORT_X;
	spritesClipValues.height = 18;
	spritesClipValues.width = 30;
	spritesClip = &spritesClipValues;
	
	// Create sprites
	
	sp_player = sp_CreateSpr (sp_MASK_SPRITE, 3, sprite_1_a);
	sp_AddColSpr (sp_player, sprite_1_b);
	sp_AddColSpr (sp_player, sprite_1_c);
	player.current_frame = player.next_frame = sprite_1_a;
	
	for (gpit = 0; gpit < 3; gpit ++) {
		sp_moviles [gpit] = sp_CreateSpr(sp_MASK_SPRITE, 3, sprite_9_a);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_b);
		sp_AddColSpr (sp_moviles [gpit], sprite_9_c);	
		en_an [gpit].current_frame = en_an [gpit].next_frame = sprite_9_a;
	}


	
	// Intro
	
	play_music = 1;

	unpack_RAMn (3, SCR_MOJON, 16384, 1);
	wyz_play_sound (8, 2);
	espera_activa (150);
	unpack_RAMn (3, SCR_UBHRES, 16384, 1);
	wyz_play_sound (7, 2);
	espera_activa (150);
	unpack_RAMn (3, SCR_SHEET, 16384, 1);
	wyz_play_sound (5, 2);
	espera_activa (1000);
	
	blackout_everything ();
	draw_fast (10, 10, 70, (unsigned char *) ("DEDICATED TO"));
	draw_fast (9, 12, 71, (unsigned char *) ("ENRIQ  CERVERA"));
	draw_fast (8, 13, 71, (unsigned char *) ("EMILIO SALGUEIRO"));
	wyz_play_sound (6, 2);
	espera_activa (150);
	
	// Menu
	
	menu ();
}
