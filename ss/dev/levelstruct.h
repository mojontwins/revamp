// Current level structs & functions

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
	n_blobs = 0;

	_x = VIEWPORT_X;
	_y = VIEWPORT_Y;
	
	#asm 
			ld  hl, (_n_pant)
			ld  h, 0 
			ld  de, 135
			call l_mult 	// HL = n_pant * 135
			ld  de, _level_buffer 
			add hl, de 

			ld  b, 135 
			ld  de, _map_buffer 			

		.draw_map_loop
			ld  a, (hl)
			ld  (de), a 
			inc hl
			inc de

			push bc 
			push hl 
			push de  

			// A = tile
			ld  (__t), a

			cp  45
			jr  z, add_blob

			cp  46
			jr  nz, add_blob_done

		.add_blob 

			ld  bc, (_n_blobs)
			ld  b, 0
			ld  hl, _blobs_x 
			add hl, bc 
			ld  a, (__x)
			ld  (hl), a 
			ld  hl, _blobs_y 
			add hl, bc 
			ld  a, (__y) 
			ld  (hl), a 
			ld  hl, _blobs_v
			add hl, bc 
			ld  a, (__t)
			sbc 45 
			ld  (hl), a 
			ld  hl, _n_blobs
			inc (hl)

		.add_blob_done

			call _draw_coloured_tile

			ld  a, (__x) 
			inc a 
			inc a 
			cp  30 + VIEWPORT_X
			jr  nz, draw_map_nc_x

			ld  hl, __y
			inc (hl)
			inc (hl)
			
			ld  a, VIEWPORT_X

		.draw_map_nc_x 
			ld  (__x), a 

			pop de 
			pop hl
			pop bc 
			djnz draw_map_loop
	#endasm

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
	
	/*
	hotspot_x = hotspot_y = 240;
	if (hotspots [n_pant].act == 1 && hotspots [n_pant].tipo != 0) {
		_x = (hotspots [n_pant].xy >> 4);
		_y = (hotspots [n_pant].xy & 15);
		hotspot_x = _x << 4;
		hotspot_y = _y << 4;;
		orig_tile = map_buffer [_x + (_y << 4) - _y];
		
		_x = VIEWPORT_X + _x + _x; _y = VIEWPORT_Y + _y + _y; _t = 59 - hotspots [n_pant].tipo; 
		draw_coloured_tile ();
	}
	*/
	#asm
		.create_hotspot
			ld  a, 240
			ld  (_hotspot_y), a 

			// Calculate pointer: hotspots + n_pant*3 = hotspots + enoffs !!
			ld  bc, (_enoffs)
			ld  b, 0
			ld  ix, _hotspots
			add ix, bc 

			// Struct is XY - type - act
			ld  a, (ix + 2) 		// act
			dec a  					// act == 1 ?
			jr  nz, create_hotspot_done

			ld  a, (ix + 1) 		// type
			or  a  					// type != 0 ?
			jr  z, create_hotspot_done

			ld  a, (ix + 0) 		// xy 
			ld  b, a 

			// _x = xy >> 4
			srl a 
			srl a 
			srl a 
			srl a 
			ld  (__x), a 

			// hotspot_x = _x << 4 = xy & 0xf0
			ld  a, b
			and 0xf0 
			ld  (_hotspot_x), a 

			// _y = xy & 15
			ld  a, b 
			and 0x0f 
			ld  (__y), a 

			// hotspot_y = _y << 4
			sla a
			sla a  
			sla a 
			sla a 
			ld  (_hotspot_y), a

			// orig_tile = map_buffer [_x + (_y << 4) - _y];
			ld  a, (__x)
			ld  c, a 
			ld  a, (__y)
			ld  b, a 
			sla a
			sla a 
			sla a 
			sla a 
			sub b 
			add c 

			ld  b, 0 
			ld  c, a 
			ld  hl, _map_buffer
			add hl, bc 
			ld  a, (hl)
			ld  (_orig_tile), a 

			// _x = VIEWPORT_X + _x + _x; 
			ld  a, (__x) 
			add a 
			add VIEWPORT_X 
			ld  (__x), a 

			// _y = VIEWPORT_Y + _y + _y; 
			ld  a, (__y) 
			add a 
			add VIEWPORT_Y 
			ld  (__y), a 

			// _t = 59 - hotspots [n_pant].tipo; 
			ld  a, 59 
			ld  b, (ix + 1)
			sub b 
			ld  (__t), a

			call _draw_coloured_tile

		.create_hotspot_done
	#endasm
	
	// Invalidate

	invalidate_viewport ();

}

// New encoding
// & 1 = kills
// & 4 = platform
// & 8 = solid
// & 16 = <-
// & 32 = ->

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
