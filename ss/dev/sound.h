// Arkos / beeper dual sound driver

// Music order
// 0-3: levels
// 4: astro ganga
// 5: money
// 6: blank

#define SFX_HIT			0
#define SFX_LAND 		1
#define SFX_JUMP 		2
#define SFX_LIFE 		3
#define SFX_OBJECT 		4

#define ARKOS_SFX_CHANNEL 			1
#define ARKOS_RAM 					1
#define ARKOS_ADDRESS_ATPLAY 		0xC000 	
#define ARKOS_ADDRESS_ATSTOP 		0xC6E1
#define ARKOS_ADDRESS_ATSFXSTOPALL	0xC6F7
#define ARKOS_ADDRESS_ATSFXPLAY 	0xC704
#define ARKOS_ADDRESS_MT_LOAD_SONG	0xC7FC
#define ARKOS_ADDRESS_MT_INIT 		0xC81C

// isr
#asm
	defw 0	// 2 bytes libres
#endasm

void ISR(void) {
	#asm
			ld  hl, _isrc
			inc (hl)						

			ld  a, (_is128k)
			or  a 
			jr  z, isr_skip

			ld  b, ARKOS_RAM
			call SetRAMBank
			call ARKOS_ADDRESS_ATPLAY

			ld b, 0
			call SetRAMBank	
		.isr_skip		
	#endasm
}

#asm

	;BeepFX player by Shiru
	;You are free to do whatever you want with this code

	.sound_play

		ld hl,sfxData	;address of sound effects data

		di
		push ix
		push iy

		ld b,0
		ld c,a
		add hl,bc
		add hl,bc
		ld e,(hl)
		inc hl
		ld d,(hl)
		push de
		pop ix			;put it into ix

		xor a
		ld (sfxRoutineToneBorder  +1),a
		ld (sfxRoutineNoiseBorder +1),a


	.readData
		ld a,(ix+0)		;read block type
		ld c,(ix+1)		;read duration 1
		ld b,(ix+2)
		ld e,(ix+3)		;read duration 2
		ld d,(ix+4)
		push de
		pop iy

		dec a
		jr z,sfxRoutineTone
		dec a
		jr z,sfxRoutineNoise
		
		pop iy
		pop ix
		ei
		ret

	.nextData
		add ix, bc 
		jr  readData

	;generate tone with many parameters

	.sfxRoutineTone
		ld e,(ix+5)		;freq
		ld d,(ix+6)
		ld a,(ix+9)		;duty
		ld (sfxRoutineToneDuty+1),a
		ld hl,0

	.sfxRT0
		push bc
		push iy
		pop bc
	.sfxRT1
		add hl,de
		ld a,h
	.sfxRoutineToneDuty
		cp 0
		sbc a,a
		and 16
	.sfxRoutineToneBorder
		or 0
		out (254),a

		dec bc
		ld a,b
		or c
		jr nz,sfxRT1

		ld a,(sfxRoutineToneDuty+1)	 ;duty change
		add a,(ix+10)
		ld (sfxRoutineToneDuty+1),a

		ld c,(ix+7)		;slide
		ld b,(ix+8)
		ex de,hl
		add hl,bc
		ex de,hl

		pop bc
		dec bc
		ld a,b
		or c
		jr nz,sfxRT0

		ld c,11
		jr nextData

	;generate noise with two parameters

	.sfxRoutineNoise
		ld e,(ix+5)		;pitch

		ld d,1
		ld h,d
		ld l,d
	.sfxRN0
		push bc
		push iy
		pop bc
	.sfxRN1
		ld a,(hl)
		and 16
	.sfxRoutineNoiseBorder
		or 0
		out (254),a
		dec d
		jr nz,sfxRN2
		ld d,e
		inc hl
		ld a,h
		and 31
		ld h,a
	.sfxRN2
		dec bc
		ld a,b
		or c
		jr nz,sfxRN1

		ld a,e
		add a,(ix+6)	;slide
		ld e,a

		pop bc
		dec bc
		ld a,b
		or c
		jr nz,sfxRN0

		ld c,7
		jr nextData


	.sfxData

	.SoundEffectsData
		defw SoundEffect0Data
		defw SoundEffect1Data
		defw SoundEffect2Data
		defw SoundEffect3Data
		defw SoundEffect4Data

	.SoundEffect0Data
		defb 2 ;noise
		defw 1,500,2570
		defb 2 ;noise
		defw 1,1000,1
		defb 0
	.SoundEffect1Data
		defb 1 ;tone
		defw 25,100,1,65531,128
		defb 0
	.SoundEffect2Data
		defb 1 ;tone
		defw 100,15,801,2,128
		defb 0
	.SoundEffect3Data
		defb 1 ;tone
		defw 3,1000,2000,100,64
		defb 1 ;pause
		defw 1,1000,0,0,0
		defb 1 ;tone
 		defw 1,1000,1500,0,64
		defb 0
	.SoundEffect4Data
		defb 1 ;tone
		defw 4,500,100,400,128
		defb 1 ;tone
		defw 1,1000,200,0,128
		defb 0

#endasm

void arkos_init (void) {
	#asm
			ld b, ARKOS_RAM
			call SetRAMBank
			
			call ARKOS_ADDRESS_MT_INIT				
			
			ld b, 0
			jp SetRAMBank
	#endasm
}

void __FASTCALL__ arkos_play_music (unsigned char song_number) {
	#asm
			ld  a, (_is128k)
			or  a
			jr z, apm_no128

			di
			ld b, ARKOS_RAM
			call SetRAMBank
			
			ld  a, l
			call ARKOS_ADDRESS_MT_LOAD_SONG		
			
			ld b, 0
			call SetRAMBank
			ei
		.apm_no128
	#endasm
}

void __FASTCALL__ play_sfx (unsigned char n) {

	#asm
			ld  a, (_is128k)
			or  a
			jr  z, _skip_ay

			di
			ld b, ARKOS_RAM
			call SetRAMBank
			
			; __FASTCALL__ -> fx_number is in l!
			inc l ; Stupid arkos
			ld a, ARKOS_SFX_CHANNEL
			ld h, 15
			ld e, 50
			ld d, 0
			ld bc, 0
			call ARKOS_ADDRESS_ATSFXPLAY
			
			ld b,0
			call SetRAMBank
			ei
			jr play_sfx_done

		._skip_ay

			ld a, l
			call sound_play
			
		.play_sfx_done
	#endasm
}
