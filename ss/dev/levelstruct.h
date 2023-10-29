// Current level structs & functions

// The current level will be copied from extra RAM
// into low, contended RAM, as this data will
// only be accessed during refresh time.

// map_data = (unsigned char *) (level_buffer);
// enem_data = (MALOTE *) (28375);
// hotspot_data = (unsigned char *) (29200);

#define ENEMS_DATA		(level_buffer + 3375)
#define HOTSPOTS_DATA	(level_buffer + 4200)

// Baddies descriptor.

typedef struct {
	unsigned char x, y;
	unsigned char x1, y1, x2, y2;
	char mx, my;
	char t;
} MALOTE;

typedef struct {
	unsigned char xy, tipo, act;
} HOTSPOT;

// Decompresion buffers. Total= 3375 + 675 + 75 = 4125 which is the size of a level

extern unsigned char level_buffer[0];
#asm
	._level_buffer defs 3375
#endasm

extern MALOTE malotes[0];
#asm
	._malotes defs 25*3*9 	// 25 rooms, 3 enems, 9 bytes = 675
#endasm

extern HOTSPOT hotspots[0];
#asm
	._hotspots defs 25*3 	// 25 rooms, 3 bytes = 75
#endasm

// 

#asm
	._level_pointer	
		defw	0
#endasm

void load_level (unsigned char level) {	
	get_resource(levels[level].resource, level_buffer);
	yOsc = levels [level].yOsc;
}

void invalidate_tile (void) {
	#asm
			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen

			ld  a, (__x)
			ld  c, a
			inc a
			ld  e, a
			ld  a, (__y)
			ld  b, a
			inc a
			ld  d, a
			ld  iy, fsClipStruct
			call SPInvalidate			
	#endasm
}

void invalidate_viewport (void) {
	#asm
			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen

			ld  b, VIEWPORT_Y
			ld  c, VIEWPORT_X
			ld  d, VIEWPORT_Y+17
			ld  e, VIEWPORT_X+29
			ld  iy, vpClipStruct
			call SPInvalidate
	#endasm
}

void draw_coloured_tile () {
	#asm
			ld  a, (__x)
			ld  c, a
			ld  a, (__y)
			call SPCompDListAddr
			ex de, hl

			// DE -> display buffer

			ld  a, (__t)
			ld  h, 0
			ld  l, a 
			add hl, hl 
			add hl, hl
			add hl, hl
			ld  bc, _supertiles
			add hl, bc 

			// For each char: write colour, inc DE, write tile, inc DE*3

			ld  a, (hl) 	// read colour 
			ld  (de), a  	// write colour
			inc hl 
			inc de 

			ld  a, (hl) 	// read char
			ld  (de), a  	// write char
			inc hl 
			inc de 

			inc de
			inc de 			// next DisplayList cell

			ld  a, (hl) 	// read colour 
			ld  (de), a  	// write colour
			inc hl 
			inc de 

			ld  a, (hl) 	// read char
			ld  (de), a  	// write char
			inc hl 
			
			ex  de, hl
			ld  bc, 123
			add hl, bc
			ex  de, hl			// next DisplayList cell

			ld  a, (hl) 	// read colour 
			ld  (de), a  	// write colour
			inc hl 
			inc de 

			ld  a, (hl) 	// read char
			ld  (de), a  	// write char
			inc hl 
			inc de 

			inc de
			inc de 			// next DisplayList cell

			ld  a, (hl) 	// read colour 
			ld  (de), a  	// write colour
			inc hl 
			inc de 

			ld  a, (hl) 	// read char
			ld  (de), a  	// write char

	#endasm
}

void render_screen () {
	map_pt = (unsigned char *) (level_buffer + y_pant * 675 + x_pant * 15);
	n_blobs = 0;

	_x = VIEWPORT_X;
	_y = VIEWPORT_Y;
		
	for (gpit = 0; gpit < 135; gpit ++) {
		_t = *map_pt;
		map_buffer [gpit] = _t;
		
		if (_t == 45 || _t == 46) {
			blobs_x [n_blobs] = _x;
			blobs_y [n_blobs] = _y;
			blobs_v [n_blobs] = _t - 45;
			n_blobs ++;
		}
		
		draw_coloured_tile ();
		
		map_pt ++;
		_x += 2;
		if (_x == 30 + VIEWPORT_X) {
			_y += 2;
			_x = VIEWPORT_X;
			map_pt += 60;	
		}
	}
	
	// Create enemies:
	
	enoffs = n_pant + n_pant + n_pant;
	
	for (gpit = 0; gpit < 3; gpit ++) {
		//en_an_frame [gpit] = 0;
		//en_an_count [gpit] = 0;
		
		rdt = malotes [enoffs + gpit].t;
		if (rdt != 0) {
			en_an_base_cell [gpit] = (rdt - 1) << 2;
			en_an_next_frame [gpit] = sprite_frames [en_an_base_cell [gpit]];
		}
	}
	
	// Create hotspots
	
	hotspot_x = hotspot_y = 240;
	if (hotspots [n_pant].act == 1 && hotspots [n_pant].tipo != 0) {
		_x = (hotspots [n_pant].xy >> 4);
		_y = (hotspots [n_pant].xy & 15);
		hotspot_x = _x << 4;
		hotspot_y = _y << 4;
		map_pt = (unsigned char *) (level_buffer + ((y_pant << 3) + y_pant + _y) * 75 + ((x_pant << 4) - x_pant) + _x);
		orig_tile = *map_pt;
		
		_x = VIEWPORT_X + _x + _x; _y = VIEWPORT_Y + _y + _y; _t =329 - hotspots [n_pant].tipo; 
		draw_coloured_tile ();
	}
	
	// Invalidate

	invalidate_viewport ();

}

// 0 nothing
// 1 kills
// 4 platform
// 8 solid
// 4 <-
//84 ->

// New encoding
// & 1 = kills
// & 4 = platform
// & 8 = solid
// & 16 = <-
// & 84 = ->

unsigned char tile_behaviour [] = {
	 0, 8, 8, 8, 0, 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 8,
	 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8,
	 0, 0, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 8, 1, 1, 1,
	24,40, 4, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4,
	 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 4, 4, 4, 4, 4, 4, 0, 8, 8, 8, 0, 0, 4,
	 4, 0
};

// Ergo.
