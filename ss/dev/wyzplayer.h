// WYZ p_interface module.

#define INICIAEFECTO	0xC364
#define WYZp_SR	0xC021	// Esto es INICIO en el código de wyzp_asm
#define CARGA_CANCION	0xC05E	// 0xC063
#define SILENCIA_PLAYER	0xC043	// 0xC048

unsigned char play_music = 0;

#asm
	defw 0	// 2 bytes libres
#endasm

void ISR(void) {
	if (play_music) {
		#asm
			ld b, 1
			call SetRAMBank
			call WYZp_SR
			ld b, 0
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
		ld b, 1
		call SetRAMBank
		ld bc, (_asm_int)
		call INICIAEFECTO
		ld b, 0
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
		ld b, 1
		call SetRAMBank
		ld a, (_asm_int)
		call CARGA_CANCION
		ld b, 0
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
		ld b, 1
		call SetRAMBank
		call SILENCIA_PLAYER
		ld b, 0
		call SetRAMBank
		ei
	#endasm
}
