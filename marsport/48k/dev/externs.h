// externs.h

extern unsigned char map_data [];
extern unsigned char set_gfx [];
extern unsigned char set_attr [];

// Sólo es necesario que definamos las tres columnas para el 
// primer frame del sprite.

extern unsigned char ph_r_1a [];
extern unsigned char ph_r_1b [];
extern unsigned char ph_r_1c [];

// Para los demás, como sólo sirve para calcular un offset, 
// tenemos suficiente con la dirección donde empieza la primera 
// columna. Así el z88dk no se queda sin identificadores.
// ¡Qué listo zoy! ¡Ya lo decía mi mae!

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

// De los demás frames sólo necesito la dirección de la primera
// columna para calcular los offsets.

extern unsigned char e1_2a [];
extern unsigned char e2_1a [];
extern unsigned char e2_2a [];
extern unsigned char e3_1a [];
extern unsigned char e3_2a [];
