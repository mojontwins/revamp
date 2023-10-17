// World structure!

typedef struct {
	unsigned char resource;
	unsigned char yOsc;
	unsigned char init_x_pant;
	unsigned char init_y_pant;
	unsigned char init_x;
	unsigned char init_y;
	unsigned char init_facing;
} LEVEL;

LEVEL levels [4] = {
	{C_LEVEL1_BIN, 3, 4, 4, 208, 80, 4}, //1856
	{C_LEVEL2_BIN, 4, 0, 2, 16, 112, 0}, //1817
	{C_LEVEL3_BIN, 4, 0, 1, 128, 48, 4}, //1786
	{C_LEVEL4_BIN, 4, 0, 0, 128, 0, 0}
};
