// World structure!

typedef struct {
	unsigned char *binary; 		
	unsigned char yOsc;
	unsigned char init_x_pant;
	unsigned char init_y_pant;
	unsigned char init_x;
	unsigned char init_y;
	unsigned char init_facing;
} LEVEL;

LEVEL levels [4] = {
	{c_level_1_bin, 3, 3, 2, 128, 32, 4},
	{c_level_2_bin, 4, 0, 2, 16, 112, 0},
	{c_level_3_bin, 4, 0, 1, 128, 48, 4},
	{c_level_4_bin, 4, 0, 0, 128, 0, 0}
};
