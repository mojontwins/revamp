// WYZ player interface module.

#define INICIAEFECTO	0xC364
#define WYZPLAYERISR	0xC021	// Esto es INICIO en el código de wyzplayer.asm
#define CARGA_CANCION	0xC05E	// 0xC063
#define SILENCIA_PLAYER	0xC043	// 0xC048

unsigned char play_music = 0;

#asm
	defw 0	// 2 bytes libres
#endasm

void ISR(void) {
	if (play_music) {
		#asm
			ld a, 1
			call SetRAMBank
			call WYZPLAYERISR
			xor a
			call SetRAMBank			
		#endasm
	}
}

void wyz_play_sound (unsigned char fx_number, unsigned char fx_channel) {
	if (!play_music)
		return;
	
	asm_int [0] = fx_channel + (fx_number	* 256);
	
	#asm
		di
		ld a,1
		call SetRAMBank
		ld bc, (_asm_int)
		call INICIAEFECTO
		xor a
		call SetRAMBank
		ei
	#endasm
}

void wyz_play_music (unsigned char song_number) {
	if (!play_music)
		return;
	
	asm_int [0] = song_number;

	#asm
		di
		ld a, 1
		call SetRAMBank
		ld a, (_asm_int)
		call CARGA_CANCION
		xor a
		call SetRAMBank
		ei
	#endasm
}

void wyz_stop_sound ()
{
	if (!play_music)
		return;
	
	#asm
		di
		ld a,1
		call SetRAMBank
		call SILENCIA_PLAYER
		xor a
		call SetRAMBank
		ei
	#endasm
}
