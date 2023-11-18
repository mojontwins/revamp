/* Historia:

	En 1993, unos hombres del ejército americano que formaban un comand... eeeh... no, coño... En 1993,
	diseñamos esta nueva secuela de la saga infinita (no pararemos hasta que haya más juegos de Phantomas
	que de Manic Miner y JSW) de cabo a rabo un servidor y mis colegas de Scumm (Ato y Sam, hello). Recuerdo
	que incluso hicimos una preview en la revista LOKOsoft que hacíamos por aquel entonces. El juego lo em-
	pecé pero jamás lo terminé, y no conservo nada. 
	
	Como estaba aburrido, he aprovechado para mejorar el motor de Infinity que tenía cosas muy horriblemente
	hechas. Así, cuando alguien quiera mirar un código de plataformas preciso tipo Phantomas, puede mirar este
	en lugar del Infinity porque vaya tela :D
	
*/

/* Cosa:

	Esto es el principio de una enorme saga de juegos con otros personajes del universo LOKOsofoto. La idea
	es que cada juego, de dinámica similar, incluya siempre una nueva característica y además sea "homenaje"
	de nuestros juegos preferidos.
	
	Anju y yo estamos de acuerdo en que este recuerda al Dan Dare por alguna razón (porque no ha sido, digamos,
	un "homenaje consciente"). El próximo... No sé, ya nos inventaremos algo. Se baraja darle un rollo estético
	tipo "Bruce Lee".
*/

/* Memory map: (que siempre lo tengo tó por 1000 papeles y al final estoy tol rato recalculando...

	Página 0 (modo 48K)
		32768			Binario compilado (esto)
		31939	829		menu.bin
		31429	510		marcador.bin
		28612	2817	final.bin
		28251	361		mojon.bin
		27951	300		sonidos.bin
		26448	1503	music.bin
		
*/

// Pila:
#pragma output STACKPTR=26000	// 32768+512

// Includes:
#include <spritepack.h>
#include "externs.h"			// Mira: esto permite definir aquí externs y poner los datos en plan guarro al final
								// Esto mola sobre todo porque así paginar es mucho más fácil (e divertente).
#include "marsene.h"			// Esto es más comodo así mientras desarrollo (porque marsene es generado por colocador)
								// Cuando termine TENDRÉ que cambiarlo.
#include "aplib.h"				// Depacker

// Defines:

#define AD_FREE			60700 // 59000
#define MARCO			31429
#define MENU			31939
#define FINAL			28612
#define MOJON_TWINS 	28251
#define	BEEPER			27951
#define MUSIC			26448

// Struct/types:

extern struct sp_Rect *sp_ClipStruct;
extern char asm_number[1];
extern unsigned int asm_int[1];
extern char *Rand8;
struct sp_Rect spritesClipValues;
struct sp_Rect *spritesClip;
struct sp_Rect backtile_rect;
unsigned char backtile_buff [8];
struct sp_UDK keys;
struct sp_PSS ps;         	// a print string struct used by sp_PrintString
struct sp_SS *sp_ph;
struct sp_SS *sp_en [3];	// los tres enemigos. Los tres mosqueperros. Los panchos. Los chichos.
void *joyfunc;				// Puntero a la función de manejo seleccionada.

// Strings (para la pantalla de menú)
unsigned char ss_menu_opts [] = "\x10\x47\x16\x09\x0a1. KEMPSTON\x16\x0a\x0a2. KEYBOARD\x16\x0c\x0a0. START!\xff";
unsigned char ss_credits [] = "\x16\x11\x00\x10\x46BYTES:NATH  GFX:ANJU, NATH, KEND\x16\x12\x04BEEPER SFX & MUSIC: NATH\x16\x14\x06\x10\x07THANKS TO \x10\x47AGUS\x10\x07 & \x10\x47WYZ\x16\x15\x01\x10\x07DEDICATED TO\x10\x47 CAROLINA KENDROOCK\x16\x17\x06\x10\x44(C) 2009 MOJON TWINS\xff";
unsigned char ss_get_ready [] = "\x10\x46\x16\x0a\x0bGET READY!\xff";
unsigned char ss_game_over [] = "\x10\x46\x16\x09\x0a            \x16\x0a\x0a GAME OVER! \x16\x0b\x0a            \xff";
unsigned char menzae [] = "CONGRATS! YOU MADE IT. NO RAM FOR MORE TEXT!. CYA IN TALES 2! OLE TU PISHA Y TUJ BUEBO,CALAMAR VESPERTINO,TERNERO COSMICO.                                \xff";
	
//Structs para sprites, enemigos, etcétera...
typedef struct {
	unsigned char x, y;
	unsigned char mx, my;
	unsigned char sal;
	unsigned char nu;
	unsigned char frame;
	unsigned char facing;
	unsigned char life;
	unsigned char score;
	unsigned char kpress;
	unsigned char *current_frame, *next_frame;
} PHANTOMAS;
PHANTOMAS phantomas;

typedef struct {
	unsigned char frame;
	unsigned char count;
	unsigned char *current_frame, *next_frame;
} ANIMADO;
ANIMADO en_an [3];

unsigned char map_buffer [135];

// Extern data:

#asm
	LIB SPCClipStruct
._sp_ClipStruct
	defw SPCClipStruct
._asm_number 
	defb 0
._asm_int
	defw 0
#endasm

// Globals:

char play = 0;
unsigned char cota;
unsigned char flipflop = 0;
char globaldif = 3;
unsigned char hsx, hsy;
unsigned char enoffs;
unsigned char backtile;
unsigned char frontile;
unsigned char halflife = 0;

// Comportamiento de cada tile:
// 0 nada
// 1 mata
// 2 plataforma
// 3 solido
// 4 <-
// 5 ->
char behaviour [] = {
	0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	4, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
};

void *my_malloc(unsigned int bytes) {
   return sp_BlockAlloc(0);
}

void *u_malloc = my_malloc;

void *u_free = sp_FreeBlock;

void peta_el_beeper (unsigned int sonido) {
	#asm
		xor a
		ld (23624), a
	#endasm
	
	switch (sonido) {
		case 0:
			#asm
				call BEEPER
			#endasm
			break;
		case 1:
			#asm
				call BEEPER + 50
			#endasm
			break;
		case 2:
			#asm
				call BEEPER + 100
			#endasm
			break;
		case 3:
			#asm
				call BEEPER + 150
			#endasm
			break;
		case 4:
			#asm
				call BEEPER + 200
			#endasm
			break;
		case 5:
			#asm
				call BEEPER + 250
			#endasm
			break;
	}
}

void step () {
	#asm
		ld a, 16
		out (254), a
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		xor 16
		out (254), a
	#endasm	
}

void unpack (unsigned int address) {
	asm_int [0] = address;
	
	#asm
		ld hl, (_asm_int)
		ld de, 16384
		call depack
	#endasm
}

void fade_out () { 
	/* El segundo programa de más de 5 lineas en Z80 ASM de na_th_an */ 
	/* Optimizado por Metalbrain */ 
	/* Esto "oscurece" un paso la pantalla. Llamado 8 veces la dejará en negro */ 
	unsigned char i;
	
	for (i = 0; i < 8; i ++) {	
		#asm 
			ld   e, 3               ; 3 tercios 
			ld   hl, 22528          ; aquí empiezan los atributos 
			halt                    ; esperamos retrazo. 
		.fade_out_bucle  
			ld   a, (hl )           ; nos traemos el atributo actual 
		 	
			ld   d, a               ; tomar atributo 
			and  7                  ; aislar la tinta 
			jr   z, ink_done        ; si vale 0, no se decrementa 
			dec  a                  ; decrementamos tinta 
		.ink_done 
			ld   b, a               ; en b tenemos ahora la tinta ya procesada. 
			
			ld   a, d               ; tomar atributo 
			and  56                 ; aislar el papel, sin modificar su posiciÃ³n en el byte 
			jr   z, paper_done      ; si vale 0, no se decrementa 
			sub  8                  ; decrementamos papel restando 8 
		.paper_done 
			ld   c, a               ; en c tenemos ahora el papel ya procesado. 
			ld   a, d  
			and  192                ; nos quedamos con bits 6 y 7 (BRIGHT y FLASH) 
			or   c                  ; añadimos paper 
			or   b                  ; e ink, con lo que recompuesto el atributo 
			ld   (hl),a             ; lo escribimos, 
			inc  l                  ; e incrementamos el puntero. 
			jr   nz, fade_out_bucle ; continuamos hasta acabar el tercio (cuando L valga 0) 
			inc  h                  ; siguiente tercio 
			dec  e 
			jr   nz, fade_out_bucle ; repetir las 3 veces 
		#endasm 
	}
}

unsigned char rand () {
	unsigned char res;
	
	#asm
	._Rand8	ld	a,9		; Seed is usually 0
			ld	b,a
			add	a,a
			add	a,a
			add	a,b
			inc	a		; another possibility is ADD A,7
			ld (_Rand8+1),a
			ld (_asm_number), a
	#endasm

	res = asm_number [0];

	return res;
}

void my_PrintString (char *string) {
	// He hecho esta función para no tener que tener (:D) los carácteres
	// en sus ASCII correspondientes. Uno, qués asín.
	unsigned char index = 0;
	unsigned char x = 0, y = 0, atrib = 7;
	unsigned char fin = 0;
	
	while (!fin) {
		switch (string [index]) {
			case 0x10:					// ATR
				index ++;
				atrib = string [index];
				break;
			case 0x16:					// AT
				index ++;
				y = string [index];
				index ++;
				x = string [index];
				break;
			case 0xff:
				fin = 1;
				break;
			default:
				sp_PrintAtInv (y, x, atrib, string [index] - 32);
				x = x + 1;
		}
		index ++;
	}
}

void blackout_everything () {
	unsigned char *origin;

	origin = (unsigned char *) 22528;
	while (origin < 23296) {
		*origin = 0;
		origin ++;
	}
}

void draw_life (void) {
	sp_PrintAtInv (22, 24, 87, 16 + (phantomas.life / 100));
	sp_PrintAtInv (22, 25, 87, 16 + (phantomas.life % 100) / 10);
	sp_PrintAtInv (22, 26, 87, 16 + (phantomas.life % 10));
}

void draw_score (void) {
	sp_PrintAtInv (22, 29, 87, 16 + (phantomas.score / 10));
	sp_PrintAtInv (22, 30, 87, 16 + (phantomas.score % 10));
}

unsigned char prefalling;

void mueve () {
	unsigned char i;
	unsigned char xx, yy;
	unsigned char mapidx;
	unsigned char falling;
	unsigned char allpurp;
	
	i = (joyfunc) (&keys);
	xx = phantomas.x >> 4;
	yy = phantomas.y >> 4;
	mapidx = (yy << 4) - yy + xx; // mapidx = 15 * yy + xx;
	
	// Tiles que te matan
	allpurp = 0;
	if ((phantomas.x & 15) == 0) {
		if ((phantomas.y & 15) == 0) {
			if (map_buffer [mapidx] == 1) 		// [x, y]
				allpurp = 1;
		} else {
			if (map_buffer [mapidx] == 1 || 
			    map_buffer [mapidx + 15] == 1) 	// [x, y] || [x, y + 1]
				allpurp = 1;
		}
	} else {
		if ((phantomas.y & 15) == 0) {
			if (map_buffer [mapidx] == 1 || 
			    map_buffer [mapidx + 1] == 1) 	// [x, y] || [x + 1, y]
				allpurp = 1;
		} else {
			if (map_buffer [mapidx] == 1 || 
			    map_buffer [mapidx + 1] == 1 || 
			    map_buffer [mapidx + 15] == 1 || 
			    map_buffer [mapidx + 16] == 1) 	// [x, y] || [x + 1, y] || [x, y + 1] || [x + 1, y + 1]
				allpurp = 1;
		}
	}
	
	if (allpurp && halflife) {
		peta_el_beeper (4);
		phantomas.life --;
		draw_life ();
	}

	// Empezamos con el movimiento.
	// Esto está tan optimizado que ya ni entiendo de qué va XD (mentira).
		
	if (phantomas.sal == 0) {
		
		// ¿caemos?
		falling = 0;
		
		if (phantomas.y < 128) {
			if ((phantomas.y & 15) == 0) {
				if ((phantomas.x & 15) == 0) {
					if (map_buffer [mapidx + 15] < 2) {
						falling = 1;
					}
				} else {
					if (map_buffer [mapidx + 15] < 2 && map_buffer [mapidx + 16] < 2) {
						falling = 1;
					}
				}
			} else {
				falling = 1;
			}
		}
		
		if (prefalling != falling && !falling)
			//wyz_play_sound (0, 2);
		
		prefalling = falling;
		
		if (!falling) {
			// Cambio: Muevo, y si es ilegal, deshago hasta el borde.	
			
			if ((i & sp_LEFT) == 0) {
				step ();
				phantomas.x -= 2;
				phantomas.facing = 1;
				phantomas.frame = (phantomas.frame + 1) & 3;
				xx = phantomas.x >> 4;
				mapidx = (yy << 4) - yy + xx; // mapidx = 15 * yy + xx;
				
				// Vemos si colisionamos a la izquierda.
				if ((phantomas.y & 15) == 0) {
					if (map_buffer [mapidx] > 2) {
						// Ajustamos al borde del tile siguiente
						phantomas.x = ((phantomas.x >> 4) << 4) + 16;
					}
				} else {
					if (map_buffer [mapidx] > 2 || map_buffer [mapidx + 15] > 2) {
						// Ajustamos al borde del tile siguiente
						phantomas.x = ((phantomas.x >> 4) << 4) + 16;
					}
				}
			}
			 
			if ((i & sp_RIGHT) == 0) {
				step ();
				phantomas.x += 2;
				phantomas.facing = 0;
				phantomas.frame = (phantomas.frame + 1) & 3;
				xx = phantomas.x >> 4;
				mapidx = (yy << 4) - yy + xx; // mapidx = 15 * yy + xx;
				
				// Vemos si colisionamos a la derecha
				if ((phantomas.y & 15) == 0) {
					if (map_buffer [mapidx + 1] > 2) {
						// Ajustamos al borde del tile
						phantomas.x = ((phantomas.x >> 4) << 4);
					}
				} else {
					if (map_buffer [mapidx + 1] > 2 || map_buffer [mapidx + 16] > 2) {
						// Ajustamos al borde del tile
						phantomas.x = ((phantomas.x >> 4) << 4);
					}
				}
			}
			
			// Salto			
			if (!phantomas.kpress) {
				if ((i & sp_UP) == 0) {
					// salto alto
					phantomas.x = ((phantomas.x >> 1) << 1); // Esto es feo, pero ahorra mucho código y ni se nota :o)
					phantomas.y = ((phantomas.y >> 4) << 4);
					phantomas.mx = 2;
					phantomas.my = 4;
					phantomas.nu = 0;
					phantomas.sal = 1;
					phantomas.kpress = 1;
					peta_el_beeper (3);
				} else if ((i & sp_DOWN) == 0) {
					// salto largo
					phantomas.x = ((phantomas.x >> 2) << 2); // Esto es feo, pero ahorra mucho código y ni se nota :o)
					phantomas.y = ((phantomas.y >> 4) << 4);
					phantomas.mx = 4;
					phantomas.my = 2;
					phantomas.nu = 0;
					phantomas.sal = 1;
					phantomas.kpress = 1;
					peta_el_beeper (3);
				} 
			}
			
			if ((i & sp_UP) && (i & sp_DOWN)) {
				phantomas.kpress = 0;
			}
						
			// Autodeslizamiento en los rodillos arrastrantes buenaente
			if (!phantomas.sal) {
				xx = phantomas.x >> 4;
				mapidx = (yy << 4) - yy + xx; // mapidx = 15 * yy + xx;
				
				if ((phantomas.x & 15) == 0) {
					if (map_buffer [mapidx + 15] == 4 && map_buffer [mapidx - 1] < 3) {
						//wyz_play_sound (2, 2);
						phantomas.x --;
					} else if (map_buffer [mapidx + 15] == 5 && map_buffer [mapidx + 1] < 3) {
						//wyz_play_sound (2, 2);
						phantomas.x ++;
					}
				} else {
					if (map_buffer [mapidx + 15] == 4 || map_buffer [mapidx + 16] == 4) {
						//wyz_play_sound (2, 2);
						phantomas.x --;
					} 
					if (map_buffer [mapidx + 15] == 5 || map_buffer [mapidx + 16] == 5) {
						//wyz_play_sound (2, 2);
						phantomas.x ++;
					}
				}
			}
		} else {
			phantomas.y += 4;
			phantomas.y = (phantomas.y >> 2) << 2;
		}
	} else {
		// Salto. si nu < 8 sube, y luego baja hasta que nu = 16
		// phantomas.x = (phantomas.x >> 2) << 2;
		
		// Vertical
		if (phantomas.nu < 8) {
			if (phantomas.y > 0) {
				if ((phantomas.y & 15) == 0) {
					if ((phantomas.x & 15) == 0) {
						if (map_buffer [mapidx - 15] < 3) {
							phantomas.y -= phantomas.my;
						}
					} else {
						if (map_buffer [mapidx - 15] < 3 && map_buffer [mapidx - 14] < 3) {
							phantomas.y -= phantomas.my;
						}
					}
				} else {
					phantomas.y -= phantomas.my;
				}
			}		
		} else {
			if ((phantomas.y & 15) == 0) {
				if ((phantomas.x & 15) == 0) {
					if (map_buffer [mapidx + 15] < 2) {
						phantomas.y += phantomas.my;
					} else {
						phantomas.sal = 0;
						phantomas.y = ((phantomas.y >> 4) << 4);
						//wyz_play_sound (0, 2);
					}
				} else {
					if (map_buffer [mapidx + 15] < 2 && map_buffer [mapidx + 16] < 2) {
						phantomas.y += phantomas.my;
					} else {
						phantomas.sal = 0;
						phantomas.y = ((phantomas.y >> 4) << 4);
						//wyz_play_sound (0, 2);
					}
				}
			} else {
				phantomas.y += phantomas.my;
			}
		}
		
		yy = phantomas.y >> 4;
		mapidx = 15 * yy + xx;
		
		// Horizontal
		
		if (phantomas.facing) {
			if (phantomas.x > 0) {
				if ((phantomas.x & 15) == 0) {
					if ((phantomas.y & 15) == 0) {
						if (map_buffer [mapidx - 1] < 3) {
							phantomas.x -= phantomas.mx;
						}
					} else {
						if (map_buffer [mapidx - 1] < 3 && map_buffer [mapidx + 14] < 3) {
							phantomas.x -= phantomas.mx;
						}
					}
				} else {
					phantomas.x -= phantomas.mx;		
				}
			}
		} else {
			if (phantomas.x < 224) {
				if ((phantomas.x & 15) == 0) {
					if ((phantomas.y & 15) == 0) {
						if (map_buffer [mapidx + 1] < 3) {
							phantomas.x += phantomas.mx;
						}
					} else {
						if (map_buffer [mapidx + 1] < 3 && map_buffer [mapidx + 16] < 3) {
							phantomas.x += phantomas.mx;
						}
					}
				} else {
					phantomas.x += phantomas.mx;		
				}
			}
		}
		
		phantomas.nu ++;
		if (phantomas.nu == 16) phantomas.sal = 0;
	}
	
	if (phantomas.sal || falling) {
		if (phantomas.facing)
			phantomas.next_frame = ph_l_4a;
		else
			phantomas.next_frame = ph_r_4a;
	} else {
		if (phantomas.facing) {
			if (phantomas.frame == 1) 
				phantomas.next_frame = ph_l_2a;
			else if (phantomas.frame == 3) 
				phantomas.next_frame = ph_l_3a;
			else	
				phantomas.next_frame = ph_l_1a;
		} else {
			if (phantomas.frame == 1) 
				phantomas.next_frame = ph_r_2a;
			else if (phantomas.frame == 3) 
				phantomas.next_frame = ph_r_3a;
			else	
				phantomas.next_frame = ph_r_1a;
		}	
	}
}

void mueve_bicharracos () {
	// Vamos a mover un frame todos los bicharracos activos.
	
	unsigned char i, enoffsmasi;
	
	for (i = 0; i < 3; i ++) {
		enoffsmasi = enoffs + i;
		if (malotes [enoffsmasi].t != 0) {
			malotes [enoffsmasi].x += malotes [enoffsmasi].mx;
			if (malotes [enoffsmasi].x == malotes [enoffsmasi].x1 || malotes [enoffsmasi].x == malotes [enoffsmasi].x2)
				malotes [enoffsmasi].mx = -malotes [enoffsmasi].mx;
			malotes [enoffsmasi].y += malotes [enoffsmasi].my;
			if (malotes [enoffsmasi].y == malotes [enoffsmasi].y1 || malotes [enoffsmasi].y == malotes [enoffsmasi].y2)
				malotes [enoffsmasi].my = -malotes [enoffsmasi].my;
				
			en_an [i].count ++; 
			if (en_an [i].count == 4) {
				en_an [i].count = 0;
				en_an [i].frame = !en_an [i].frame;
				
				switch (malotes [enoffsmasi].t) {
					case 1:
						en_an [i].next_frame = en_an [i].frame ? e1_1a : e1_2a;
						break;
					case 2:
						en_an [i].next_frame = en_an [i].frame ? e2_1a : e2_2a;
						break;
					case 3:
						en_an [i].next_frame = en_an [i].frame ? e3_1a : e3_2a;
				}	
			}
		}
	}
}

void draw_screen (char pant) {
	// Dibuja la pantalla que recibe como parámetro.
	
	unsigned char x = 1, y = 1;
	unsigned char i, tile, tilel2;
	unsigned int index, indexmasi;
	unsigned char c1, c2, c3, c4, t1, t2, t3, t4;
		
	// Calculamos el offset real de la pantalla que queremos dibujar.
	index = ((int)pant) * 135;
	
	// Pintamos 135 tiles
	for (i = 0; i < 135; i ++) {
		indexmasi = index + i;
		tile = map_data [indexmasi];
		map_buffer [i] = behaviour [tile - 1];		// Como te dejes un tile a 0 esto EXPLOTA.
		tilel2 = tile << 2;
				
		//pointer ++;
		
		switch (tile){
			case 1:
				c1 = 94; t1 = (rand () % 7) != 3 ? 64 : 63;
				c2 = 94; t2 = (rand () % 7) != 3 ? 64 : 63;
				c3 = 94; t3 = (rand () % 7) != 2 ? 64 : 63;
				c4 = 94; t4 = (rand () % 7) != 2 ? 64 : 63;
				break;
			case 6:
			case 8:
			case 13:
			case 14:
				c1 = map_data [indexmasi - 16] > 16 ? 7 : set_attr [60 + (tilel2)]; t1 = 60 + (tilel2);
				c2 = map_data [indexmasi - 15] > 16 ? 7 : set_attr [61 + (tilel2)]; t2 = 61 + (tilel2);
				c3 = map_data [indexmasi -  1] > 16 ? 7 : set_attr [62 + (tilel2)]; t3 = 62 + (tilel2);
				c4 = set_attr [63 + (tilel2)]; t4 = 63 + (tilel2);
				break;
			default:
				c1 = set_attr [60 + (tilel2)]; t1 = 60 + (tilel2);
				c2 = set_attr [61 + (tilel2)]; t2 = 61 + (tilel2);
				c3 = set_attr [62 + (tilel2)]; t3 = 62 + (tilel2);
				c4 = set_attr [63 + (tilel2)]; t4 = 63 + (tilel2);
		}
		sp_PrintAtInv (y    , x    , c1, t1);
		sp_PrintAtInv (y    , x + 1, c2, t2);
		sp_PrintAtInv (y + 1, x    , c3, t3);
		sp_PrintAtInv (y + 1, x + 1, c4, t4);
		
		x += 2; if (x == 31) { x = 1; y += 2; }
	}
	
	// Vemos si hay que poner un objeto en el hotspot. Si no, vemos si ponemos o no una energía 
	// en una casilla transpasable cualquiera de la pantalla.
	
	/*
	hsy = 255; 						// suficiente para que NUNCA coincida :D
	frontile = 0;
	if (hotspots [pant].act) {
		frontile = 124;
		x = hotspots [pant].xy >> 4;
		y = hotspots [pant].xy & 15;
	} else if ((rand () & 3) == 2 && pant != 12) {	
		frontile = 120;				// Si no hay objeto, cada RAND veces ponemos una energía:
		do {
			x = rand () % 15;
			y = rand () %  9;
		} while (map_buffer [(y << 4) - y + x] > 2);
	}
	
	if (frontile != 0) {
		backtile = map_data [index + (y << 4) - y + x];
		hsx = x << 4;
		hsy = y << 4;
		x = 1 + x + x;
		y = 1 + y + y;
		sp_PrintAtInv (y    , x    , set_attr [frontile    ], frontile    );
		sp_PrintAtInv (y    , x + 1, set_attr [frontile + 1], frontile + 1);
		sp_PrintAtInv (y + 1, x    , set_attr [frontile + 2], frontile + 2);
		sp_PrintAtInv (y + 1, x + 1, set_attr [frontile + 3], frontile + 3);
	}
	*/
	
	// [UPD20090227]
	// Ahora en los hotspots donde no hay regalo, habrá una recarga de energía,
	// para complicar el juego. 
		
	if (hotspots [pant].act != 2) {
		x = hotspots [pant].xy >> 4;
		y = hotspots [pant].xy & 15;
		frontile = hotspots [pant].act ? 124 : 120;
		backtile = map_data [index + (y << 4) - y + x];
		hsx = x << 4;
		hsy = y << 4;
		x = 1 + x + x;
		y = 1 + y + y;
		backtile_rect.row_coord = y;
		backtile_rect.col_coord = x;
		sp_GetTiles (backtile_rect, backtile_buff);
		sp_PrintAtInv (y    , x    , set_attr [frontile    ], frontile    );
		sp_PrintAtInv (y    , x + 1, set_attr [frontile + 1], frontile + 1);
		sp_PrintAtInv (y + 1, x    , set_attr [frontile + 2], frontile + 2);
		sp_PrintAtInv (y + 1, x + 1, set_attr [frontile + 3], frontile + 3);
	} else {
		frontile = 0;
		hsy = 255;
	}
				
	// Movemos y cambiamos a los enemigos según el tipo que tengan
	enoffs = pant * 3;
	
	for (i = 0; i < 3; i ++) {
		en_an [i].frame = 0;
		en_an [i].count = 0;
		switch (malotes [enoffs + i].t) {
			case 0:
				sp_MoveSprAbs (sp_en [i], spritesClip, 0, 22, 0, 0, 0);
				break;
			case 1:
				en_an [i].next_frame = e1_1a;
				break;
			case 2:
				en_an [i].next_frame = e2_1a;
				break;
			case 3:
				en_an [i].next_frame = e3_1a;
				break;
		}
	}
}

void muerte (uchar a, uchar b) {
	char i, x, y;
	char *screen_attrs_add;
	unsigned char c;
	
	sp_UpdateNow ();
	//wyz_play_sound (3, 2);
	//sp_Wait (20);

	for (i=0; i < 10; i++) 	{
		c = (i & 1) ? a : b;
		for (y = 1; y < 19; y++) {
			screen_attrs_add = (char *) (22528 + (y << 5) + 1);
			for (x = 1; x < 31; x ++) {	
				*screen_attrs_add = c;
				screen_attrs_add ++;
			}
		}
		peta_el_beeper (2);
	}

	peta_el_beeper (0);
}

void init_IM2 () {
	#asm
		di
	#endasm

	sp_InitIM2(0xf1f1);						// Does nothing :)
	sp_CreateGenericISR(0xf1f1);
	
	#asm
		ei
	#endasm
}

void menu (void) {
	unsigned char selected; 
	unsigned char fin = 0;
	int key_0;
	int key_1;
	int key_2;
	
	key_0 = sp_LookupKey ('0');
	key_1 = sp_LookupKey ('1');
	key_2 = sp_LookupKey ('2');
	
	sp_UpdateNow();
	unpack (MENU);
	
	my_PrintString(ss_credits);
	sp_UpdateNow ();
	
	my_PrintString(ss_menu_opts);
	
	selected = 9 + (unsigned char) (joyfunc == sp_JoyKeyboard);
			
	while (!fin) {
		
		sp_PrintAtInv (selected, 21, 0, 0);
		sp_PrintAtInv (selected, 22, 0, 0);
		
		if (sp_KeyPressed (key_0))
			fin = 1;
			
		if (sp_KeyPressed (key_1)) {
			selected = 9;
			joyfunc = sp_JoyKempston;
			peta_el_beeper (5);
		}
		if (sp_KeyPressed (key_2)) {
			selected = 10;
			joyfunc = sp_JoyKeyboard;
			peta_el_beeper (5);
		}
			
		sp_PrintAtInv (selected, 21, 71, 104);
		sp_PrintAtInv (selected, 22, 69, 105);
		
		sp_UpdateNow ();				
	}
	
	peta_el_beeper (1);
	
	fade_out ();
}

void restart_bichos () {
	unsigned char i; 

	// Movemos a los enemigos fuera de spritesClip (porque los vamos a cambiar y a mover adentro en draw_screen).
	for (i = 0; i < 3; i ++)
		sp_MoveSprAbs (sp_en [i], spritesClip, en_an [i].next_frame - en_an [i].current_frame, 22, 0, 0, 0);
}

void halt_me (int iterations) {
	char res = 1;
	int i;
	
	for (i = 0; i < iterations && res; i ++) {
		#asm
			halt
		#endasm
		if (sp_GetKey ()) 
			res = 0;
	}
}

void final (void) {	
	unsigned char i = 0, j;

	fade_out ();
		
	sp_UpdateNow ();
	unpack (FINAL);
	//wyz_play_music (4);
	
	do {		
		if (menzae [i] == 0xff) 
			i = 0;
			
		sp_PrintAtInv (23, 31, 0, menzae [i] - 32);
		sp_UpdateNow ();
		i ++;
		
		for (j = 0; j < 8; j ++) {
			#asm
				; Scrollea un pixel la linea de abajo
				; por Benway.
			
				    ld hl, 22527  ; Empezamos en la última línea
				    ld c, 8       ; 8 píxeles de alto
				    halt          ; Sincronizamos con el retrazo
			    .ending_scroller_buc_2
			    	ld b,32       ; 32 bytes de ancho
			    .ending_scroller_buc_1
				    rl (hl)       ; Rotamos el byte que corresponda
				    dec hl        ; Y pasamos al siguiente
				    djnz ending_scroller_buc_1
				    dec h         ; Para no pasarnos de caracter, tenemos que restar (255 - 32)
				    ld a,l        ; Y ahora sumamos el 32 que no restamos antes
				    add a,32      ; Pues eso
				    ld l,a        ; Y lo devolvemos a L
				    dec c
				    jr nz, ending_scroller_buc_2
			#endasm
		}
		j = (joyfunc) (&keys);
	} while (j & sp_FIRE);
	
	//wyz_stop_sound ();
}

void main (void) {
	unsigned char j, x, y;
	int aux_tiles;
	unsigned char i;
	char idx;
	unsigned char *allpurposepuntero;
	unsigned char pant;
	unsigned char playthegame;
	char dif;
	
	unsigned char flag1 = 0, flag2 = 0;
	unsigned char aux;
	
	do {
		#asm
			call MUSIC
		#endasm
	} while (!sp_GetKey ());
	
	// Substitute BASICs ISR for this thingo: 
	
	init_IM2 ();
	
	// Initialization stuff 

	sp_Initialize (7, 0);
	sp_Border (BLACK);	
	sp_AddMemory(0, 50, 14, AD_FREE);		// Allocate for 50 blocks of memory (tight!)
	ps.flags  = sp_PSS_INVALIDATE;
    ps.bounds = sp_ClipStruct;

	// dummy tiles 

	allpurposepuntero = set_gfx;
	for (aux_tiles = 0; aux_tiles < 256; aux_tiles++) {
		sp_TileArray ((unsigned char)aux_tiles, allpurposepuntero);
		allpurposepuntero += 8;
	}

	// Clip structure -- define it as small as possible!

	spritesClipValues.row_coord = 1;
	spritesClipValues.col_coord = 1;
	spritesClipValues.height = 18;
	spritesClipValues.width = 30;
	spritesClip = &spritesClipValues;
	
	// Backtile
	
	backtile_rect.height = backtile_rect.width = 2;
	
	// Sprites
	
	sp_ph = sp_CreateSpr (sp_MASK_SPRITE, 3, ph_r_1a, 4, TRANSPARENT);
	sp_AddColSpr (sp_ph, ph_r_1b, TRANSPARENT);
	sp_AddColSpr (sp_ph, ph_r_1c, TRANSPARENT);
	
	for (i = 0; i < 3; i ++)  {
		sp_en [i] = sp_CreateSpr (sp_MASK_SPRITE, 3, e1_1a, 2, TRANSPARENT);
		sp_AddColSpr (sp_en [i], e1_1b, TRANSPARENT);
		sp_AddColSpr (sp_en [i], e1_1c, TRANSPARENT);
		
		en_an [i].current_frame = en_an [i].next_frame = e1_1a;
		en_an [i].count = rand () & 3;
		en_an [i].frame = 0;
	}

	// Key assignations
	
	joyfunc = sp_JoyKeyboard;
	
	keys.up    = sp_LookupKey('q');
	keys.down  = sp_LookupKey('a');
	keys.left  = sp_LookupKey('o');
	keys.right = sp_LookupKey('p');
	keys.fire  = sp_LookupKey(' ');
	
	// Empezamos!
	phantomas.current_frame = ph_r_1a;
	
	fade_out ();
	unpack (MOJON_TWINS);
	
	halt_me (75);
	fade_out ();
		
	while (1) {
		menu ();
		
		pant = 12;	// Un poné.
		
		// Inicializamos a Phantomas:
		phantomas.x = 16;
		phantomas.y = 16;
		phantomas.sal = 0;
		phantomas.nu = 0;
		phantomas.next_frame = ph_r_1a;
		phantomas.facing = 0;
		phantomas.frame = 0;
		phantomas.kpress = 0;
		phantomas.score = 0; //20;
		phantomas.life = 255;

		// Bonito
		sp_UpdateNow();
		unpack (MARCO);
		
		// Get Ready!
		ss_get_ready [1] = 71;
		my_PrintString (ss_get_ready);
		draw_score ();
		draw_life ();
		sp_UpdateNow ();
		peta_el_beeper (5);
		
		halt_me (110);
		
		/*
		// si luego queda sitio lo descomento.
		for (i = 71; i > 63; i --) {
			ss_get_ready [1] = i;
			my_PrintString (ss_get_ready);
			sp_UpdateNow ();
			#asm
				halt
				halt
				halt
			#endasm
		}
		*/
			
		// Movemos a Phantomas a su sitio:	
		sp_MoveSprAbs (sp_ph, spritesClip, 0, 1 + (phantomas.y >> 3), 1 + (phantomas.x >> 3), phantomas.x & 7, phantomas.y & 7);
		
		restart_bichos ();
		
		// Esto no zacabao aúns.
		flag1 = 0;
		
		// Vamos a colocar unos objetos por ahí, como quien no quiere la cosa:
		
		// [UPD20090227]
		// Ahora en los hotspots donde no hay regalo, habrá una recarga de energía,
		// para complicar el juego. 
		
		for (i = 0; i < 30; i ++) 
			hotspots [i].act = 0;
			
		for (i = 0; i < 20; i ++) {
			do {
				j = rand () % 30;
			} while (hotspots [j].act || j == 12);
			hotspots [j].act = 1;
		}
		
		hotspots [12].act = 2;
		
		// Pintamos la primera pantalla
		draw_screen (pant);
		
		flag1 = !phantomas.life;
		
		//wyz_play_music (2);
		
		while (!flag1) {
			// Pinta
			sp_UpdateNow ();
			
			// flip-flop
			// Todo if que tenga un "&& halflife" se comprueba sólo en los frames impares.
			// (Esto se usa, por ejemplo, para que los enemigos quiten energía a la mitad de velocidad,
			// pero puede usarse para muchas otras cosas).
			halflife = !halflife;
			
			// Mover cosas
			mueve ();
			mueve_bicharracos ();
			
			// Guarro:
			if (phantomas.y > 128) phantomas.y = 128;
			
			// Lógica :: Cambio de pantalla
			i = (joyfunc) (&keys);
			
			if (((i & sp_LEFT) == 0 || (phantomas.sal && phantomas.facing)) && (phantomas.x <= 1 || phantomas.x > 250)) {
				phantomas.x = 224;
				pant --;
				draw_screen (pant);
			} else if (((i & sp_RIGHT) == 0 || (phantomas.sal && !phantomas.facing)) && phantomas.x >= 224) {
				phantomas.x = 0;
				pant ++;
				draw_screen (pant);
			} else if (phantomas.sal && phantomas.y <= 0 && phantomas.nu < 8) {
				phantomas.y = 128;
				//phantomas.nu --;
				pant -= 6;
				draw_screen (pant);
			} else if ((!phantomas.sal || (phantomas.sal && phantomas.nu > 7)) && phantomas.y >= 128 && pant < 24) {
				phantomas.y = 0;
				pant += 6;
				draw_screen (pant);
			}
			
			// Lógica :: Coger objetos
			if ( phantomas.x >= (hsx > 15 ? hsx - 15 : 0) && phantomas.x <= hsx + 15 && phantomas.y >= (hsy > 15 ? hsy - 15 : 0) && phantomas.y <= hsy + 15 ) {
				aux = (backtile << 2);
								
				// Hay que pintar el tile de 'atrá'
				x = 1 + (hsx >> 3);
				y = 1 + (hsy >> 3);
				
				sp_PutTiles (backtile_rect, backtile_buff);
				sp_Invalidate (&backtile_rect, &backtile_rect);
				
				hotspots [pant].act = 2;
				
				if (frontile == 124) {
					phantomas.score ++;		// Uno más pa'l bote
					draw_score ();	
					
				} else {
					phantomas.life = phantomas.life > 223 ? 255 : (phantomas.life + 32);
					draw_life ();
					
				}
				
				peta_el_beeper (0);
				
				// rápido y feo, como todo:
				hsy = 255;		// Podría haberme puesto a comprobar que hotspots [pant].act == 0 en el if de arriba, pero es
								// tontería meter una comprobación más sólo porque "quede más bonito" :-P Ç'est le Spectrum!
			}
			
			// Lógica :: Colisión con otros enemigos.
			
			// PF - por la forma que tienen los sprites, voy a hacerlo por bounding box. Con que lo pete
			// un poco más pequeño que el rectángulo real (por ejemplo, 14x14 píxels) esto da el pego que te cagas.
			
			for (i = 0; i < 3; i ++) {
				// if (malotes [enoffs + i].t != 0) {		// Esto sólo es necesario si hay habitaciones con menos de 3.
					if (phantomas.x >= malotes [enoffs + i].x - 13 && phantomas.x <= malotes [enoffs + i].x + 13 && phantomas.y >= malotes [enoffs + i].y - (malotes [enoffs + i].y ? 13 : 0) && phantomas.y <= malotes [enoffs + i].y + 13 && halflife) {
						phantomas.life --;
						draw_life ();
						peta_el_beeper (4);
					}
					
					// Esto estaba más abajo, pero así aprovecho el bucle.
					sp_MoveSprAbs (sp_en [i], spritesClip, en_an [i].next_frame - en_an [i].current_frame, 1 + (malotes [enoffs + i].y >> 3), 1 + (malotes [enoffs + i].x >> 3), malotes [enoffs + i].x & 7, malotes [enoffs + i].y & 7);
					en_an [i].current_frame = en_an [i].next_frame;
				// }
			}
			
			// Lógica :: Comprobación de final de juego: gameover o ganar.
			flag1 = !phantomas.life || (phantomas.score == 20);
			
			// Ea.
			
			// Pintar sprites
			sp_MoveSprAbs(sp_ph, spritesClip, phantomas.next_frame - phantomas.current_frame, 1 + (phantomas.y >> 3), 1 + (phantomas.x >> 3), phantomas.x & 7, phantomas.y & 7);
			phantomas.current_frame = phantomas.next_frame;
		}
		
		//wyz_stop_sound ();
		
		// Si phantomas.score < 20 y estamos aquí es que es un game over como una casa:

		// Movemos a Phantomas fuera de spritesClip.
		sp_MoveSprAbs (sp_ph, spritesClip, 0, 22, 0, 0, 0);
		
		restart_bichos ();
		
		if (phantomas.score < 20) {
			muerte (16, 2);	
			my_PrintString (ss_game_over);
			sp_UpdateNow ();
			//wyz_play_music (3);
			
			halt_me (250);			
		} else {
			final ();	
		}
		
		fade_out ();
	}		
}

#include "map.h"
#include "tileset.h"
#include "sprites.h"

/*

"Where the Wild Roses Grow"
===========================
http://es.youtube.com/watch?v=jRMe5H9WKpM

	They call me The Wild Rose
	But my name was Elisa Day
	Why they call me it I do not know
	For my name was Elisa Day
	
	From the first day I saw her I knew she was the one
	As she stared in my eyes and smiled
	For her lips were the colour of the roses
	They grew down the river, all bloody and wild
	
	When he knocked on my door and entered the room
	My trembling subsided in his sure embrace
	He would be my first man, and with a careful hand
	He wiped the tears that ran down my face
	
	They call me The Wild Rose
	But my name was Elisa Day
	Why they call me it I do not know
	For my name was Elisa Day
	
	On the second day I brought her a flower
	She was more beautiful than any woman I'd seen
	I said, 'Do you know where the wild roses grow
	So sweet and scarlet and free?'
	
	On the second day he came with a single rose
	Said: 'Will you give me your loss and your sorrow?'
	I nodded my head, as I layed on the bed
	He said, 'If I show you the roses will you follow?'
	
	They call me The Wild Rose
	But my name was Elisa Day
	Why they call me it I do not know
	For my name was Elisa Day
	
	On the third day he took me to the river
	He showed me the roses and we kissed
	And the last thing I heard was a muttered word
	As he stood smiling above me with a rock in his fist
	
	On the last day I took her where the wild roses grow
	And she lay on the bank, the wind light as a thief
	As I kissed her goodbye, I said, 'All beauty must die'
	And lent down and planted a rose between her teeth

*/


/*
    ld hl, 0x57ff ; Empezamos en la última línea
    ld c, 8       ; 8 píxeles de alto
    halt          ; Sincronizamos con el retrazo
    .buc_2
    ld b,32       ; 32 bytes de ancho
    .buc_1
    rl (hl)       ; Rotamos el byte que corresponda
    dec hl        ; Y pasamos al siguiente
    djnz buc_1
    dec h         ; Para no pasarnos de caracter, tenemos que restar (255 - 32)
    ld a,l        ; Y ahora sumamos el 32 que no restamos antes
    add a,32      ; Pues eso
    ld l,a        ; Y lo devolvemos a L
    dec c
    jr nz, buc_2
*/