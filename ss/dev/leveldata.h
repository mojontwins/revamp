// World structure!

typedef struct {
	unsigned int address;
	unsigned char yOsc;
	unsigned char init_x_pant;
	unsigned char init_y_pant;
	unsigned char init_x;
	unsigned char init_y;
	unsigned char init_facing;
} LEVEL;

LEVEL levels [4] = {
	{49152, 3, 4, 4, 208, 80, 4}, //1856
	{51008, 4, 0, 2, 16, 112, 0}, //1817
	{52825, 4, 0, 1, 128, 48, 4}, //1786
	{54611, 4, 0, 0, 128, 0, 0}
};
