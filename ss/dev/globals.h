// Globals!
// Trying to make sense of code that's 12 years old!

unsigned char safe_byte 		@ 23296;

unsigned int ram_address 		@ 23297;
unsigned int ram_destination 	@ 23299;

unsigned char ram_page 			@ 23301;

// Reserver 23304 for communication with the overlay engine
unsigned char attrs_byte 		@ 23304;

unsigned int (*joyfunc)(struct sp_UDK *);				// Controls.
void *my_malloc(uint bytes) {return sp_BlockAlloc(0);}	// malloc routines
void *u_malloc = my_malloc;								// I wonder what
void *u_free = sp_FreeBlock;							// those do...
struct sp_SS *sp_player;								// p_sprites
struct sp_SS *sp_moviles [3];							// Enemy sprites

// Structures for clipping, now in assembly
#asm
	.vpClipStruct defb VIEWPORT_Y, VIEWPORT_Y + 18, VIEWPORT_X, VIEWPORT_X + 30
	.fsClipStruct defb 0, 24, 0, 32
#endasm	

extern char asm_number[1];
extern unsigned int asm_int [1];
extern unsigned int asm_int_2 [1];
extern unsigned int seed [1];
unsigned char half_life;
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

unsigned char gpit, gpjt;
unsigned char rda, rdb, rdc, rdm, rdx, rdy, rdt, _x, _y, _t;
unsigned char denew;
unsigned int gpint;
unsigned char *gen_pt, *map_pt;
unsigned char x_pant, y_pant, n_pant;
unsigned char *map_pointer; 

// Keys

struct sp_UDK keys = {
	0x017f, // .fire
	0x01df, // .right
	0x02df, // .left
	0x01fd, // .down
	0x01fb	// .up
};

unsigned int key_r = 0x08fb;		// sp_LookupKey ('r');
unsigned int key_g = 0x10fd; 		// sp_LookupKey ('g');
unsigned int key_z = 0x02fe; 		// sp_LookupKey ('z');

unsigned int key_1 = 0x01f7;
unsigned int key_2 = 0x02f7;
unsigned int key_3 = 0x04f7;

// Actors

unsigned char p_x, p_y;
signed char p_mx, p_my;
unsigned char p_sal, p_nu;
unsigned char p_frame, p_facing;
unsigned char p_life, p_score;
unsigned char p_kpress;
unsigned char *p_current_frame, *p_next_frame;
unsigned char prefalling;
unsigned char falling;

unsigned char fc;		// Pseudo frame counter.

unsigned char _en_x, _en_y;
unsigned char enoffsmasi;
unsigned char enit;

unsigned char en_an_frame [3];
unsigned char en_an_count [3];
unsigned char en_an_base_cell [3];
unsigned char *en_an_current_frame [3], *en_an_next_frame [3];
unsigned char en_x [3];
unsigned char en_y [3];
signed char en_vx [3];
signed char en_vy [3];

unsigned char blobs_v [MAX_BLOBS], blobs_x [MAX_BLOBS], blobs_y [MAX_BLOBS];

unsigned char n_blobs;
unsigned char hotspot_x, hotspot_y;
unsigned char orig_tile;
unsigned char *map_buffer = FREEPOOL;
extern unsigned int level_pointer [0];
unsigned char yOsc = 4;

unsigned char f_win, f_gameover, isrc;

unsigned char player_on, song_playing;
