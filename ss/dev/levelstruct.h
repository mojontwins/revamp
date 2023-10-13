// Current level structs & functions

// The current level will be copied from RAM 3
// into low, contended RAM, as this data will
// only be accessed during refresh time.

// map_data = (unsigned char *) (level_buffer);
// enem_data = (MALOTE *) (28375);
// hotspot_data = (unsigned char *) (29200);

#define ENEMS_DATA		(level_buffer + 3375)
#define HOTSPOTS_DATA	(level_buffer + 4200)

// Baddies descriptor.

typedef struct {
	int x, y;
	unsigned char x1, y1, x2, y2;
	char mx, my;
	char t;
} MALOTE;

MALOTE *malotes;

typedef struct {
	unsigned char frame;
	unsigned char count;
	unsigned char *current_frame, *next_frame;
	int x;
	int y;
	int vx;
	int vy;
	unsigned char fanty_activo;
} ANIMADO;

ANIMADO en_an [3];

typedef struct {
	unsigned char xy, tipo, act;
} HOTSPOT;

HOTSPOT *hotspots;

typedef struct {
	unsigned char x, y, v;
} BLOB;

BLOB blobs [MAX_BLOBS];

unsigned char n_blobs;
unsigned char hotspot_x, hotspot_y;
unsigned char orig_tile;
extern unsigned char map_buffer [0];
extern unsigned int level_pointer [0];
unsigned char yOsc = 4;

#asm
	._level_pointer	
		defw	0
	._map_buffer
		defs 	150, 0
#endasm

void load_level (unsigned char level) {
	unpack_RAMn (4, levels [level].address, level_buffer, 0);
	yOsc = levels [level].yOsc;
}

void __FASTCALL__ draw_coloured_tile (unsigned char x, unsigned char y, unsigned char t) {
	unsigned int st_index;
	st_index = t << 3;
	sp_PrintAtInv (y    , x    , supertiles[st_index ++], supertiles[st_index ++]);
	sp_PrintAtInv (y    , x + 1, supertiles[st_index ++], supertiles[st_index ++]);
	sp_PrintAtInv (y + 1, x    , supertiles[st_index ++], supertiles[st_index ++]);
	sp_PrintAtInv (y + 1, x + 1, supertiles[st_index ++], supertiles[st_index]);
}

void render_screen (unsigned char x_pant, unsigned char y_pant) {
	unsigned char *map_pointer; 
	unsigned char y = 0, x = 0;
	unsigned char i;
	unsigned char t;
	unsigned char n_pant = y_pant * 5 + x_pant;
	
	map_pointer = (unsigned char *) (level_buffer + y_pant * 9 * 75 + x_pant * 15);
	n_blobs = 0;
		
	for (i = 0; i < 135; i ++) {
		t = *map_pointer;
		map_buffer [i] = t;
		
		if (t == 45 || t == 46) {
			blobs [n_blobs].x = x;
			blobs [n_blobs].y = y;
			blobs [n_blobs].v = t - 45;
			n_blobs ++;
		}
		
		draw_coloured_tile (VIEWPORT_X + x, VIEWPORT_Y + y, t);
		
		map_pointer ++;
		x += 2;
		if (x == 30) {
			y += 2;
			x = 0;
			map_pointer += 60;	
		}
	}
	
	// Create enemies:
	
	enoffs = n_pant * 3;
	
	for (i = 0; i < 3; i ++) {
		en_an [i].frame = 0;
		en_an [i].count = 0;
		
		switch (malotes [enoffs + i].t) {
			case 0:
				sp_MoveSprAbs (sp_moviles [i], spritesClip, 0, 22, 0, 0, 0);
				break;
			case 1:
				en_an [i].next_frame = sprite_9_a;
				break;
			case 2:
				en_an [i].next_frame = sprite_13_a;
				break;
			case 3:
				en_an [i].next_frame = sprite_17_a;
				break;
			case 4:
				en_an [i].next_frame = sprite_21_a;
				break;
			default:
				en_an [i].next_frame = sprite_21_a;
		}
	}
	
	// Create hotspots
	
	hotspot_x = hotspot_y = 240;
	if (hotspots [n_pant].act == 1 && hotspots [n_pant].tipo != 0) {
		x = (hotspots [n_pant].xy >> 4);
		y = (hotspots [n_pant].xy & 15);
		hotspot_x = x << 4;
		hotspot_y = y << 4;
		map_pointer = (unsigned char *) (level_buffer + ((y_pant << 3) + y_pant + y) * 75 + ((x_pant << 4) - x_pant) + x);
		orig_tile = *map_pointer;
		draw_coloured_tile (VIEWPORT_X + x + x, VIEWPORT_Y + y + y, 59 - hotspots [n_pant].tipo);
	}
	
	// Dark?
	
	if (y_pant < yOsc) {
		#asm
			ld hl, 23304
			ld (hl), 1
		#endasm
	} else {
		#asm
			ld hl, 23304
			ld (hl), 0
		#endasm
		
		draw_buff ();
	}
}

// 0 nothing
// 1 kills
// 2 platform
// 3 solid
// 4 <-
// 5 ->

unsigned char tile_behaviour [] = {
	0, 3, 3, 3, 0, 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 3,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3,
	0, 0, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 3, 1, 1, 1,
	4, 5, 2, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2,
	2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 0, 0, 2,
	2, 0
};

// Ergo.
