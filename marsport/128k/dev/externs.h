// externs.h

extern unsigned char map_data [];
extern unsigned char set_gfx [];
extern unsigned char set_attr [];

// S�lo es necesario que definamos las tres columnas para el 
// primer frame del sprite.

extern unsigned char ph_r_1a [];
extern unsigned char ph_r_1b [];
extern unsigned char ph_r_1c [];

// Para los dem�s, como s�lo sirve para calcular un offset, 
// tenemos suficiente con la direcci�n donde empieza la primera 
// columna. As� el z88dk no se queda sin identificadores.
// �Qu� listo zoy! �Ya lo dec�a mi mae!

extern unsigned char ph_r_2a [];
extern unsigned char ph_r_3a [];
extern unsigned char ph_r_4a [];

extern unsigned char ph_l_1a [];
extern unsigned char ph_l_2a [];
extern unsigned char ph_l_3a [];
extern unsigned char ph_l_4a [];

// Con los enemigos, lo mismo. El primer frame del primer
// enemigo lo defino entero para crear los sprites.

extern unsigned char e1_1a [];
extern unsigned char e1_1b [];
extern unsigned char e1_1c [];

// De los dem�s frames s�lo necesito la direcci�n de la primera
// columna para calcular los offsets.

extern unsigned char e1_2a [];
extern unsigned char e2_1a [];
extern unsigned char e2_2a [];
extern unsigned char e3_1a [];
extern unsigned char e3_2a [];
