;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 18462-8d70c5a-20210624
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Sun Nov 19 17:48:32 2023


	C_LINE	0,"ss.c"

	MODULE	ss_c


	INCLUDE "z80_crt0.hdr"


	C_LINE	3,"ss.c"
		LIB SPMoveSprAbs
		LIB SPPrintAtInv
		LIB SPTileArray
		LIB SPInvalidate
		LIB SPCompDListAddr
		LIB SPNullSprPtr
		LIB SPUpdateNow
	C_LINE	0,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	26,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	27,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	32,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	33,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	133,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	150,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	165,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	175,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	189,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	196,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	204,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	215,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	221,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	234,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	240,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	251,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	257,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	268,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	277,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	285,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	398,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	399,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	400,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	401,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	402,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	403,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	404,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	405,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	410,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	411,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	412,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	413,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	414,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	415,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	416,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	417,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	418,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	423,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	424,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	425,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	426,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	427,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	432,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	433,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	434,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	435,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	437,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	438,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	439,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	440,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	441,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	442,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	443,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	448,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	449,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	450,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	451,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	452,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	453,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	454,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	455,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	456,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	457,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	458,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	464,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	465,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	466,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	467,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	468,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	469,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	474,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	475,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	476,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	477,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	478,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	479,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	480,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	485,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	486,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	487,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	488,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	489,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	490,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	491,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	492,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	493,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	494,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	495,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	496,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	497,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	498,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	499,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	500,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	501,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	502,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	503,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	504,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	505,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	506,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	507,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	512,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	513,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	514,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	515,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	516,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	517,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	518,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	519,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	520,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	521,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	522,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	541,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	542,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	543,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	544,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	545,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	546,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	547,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	548,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	549,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	550,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	551,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	552,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	553,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	554,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	556,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	557,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	563,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	564,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	565,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	566,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	567,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	580,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	581,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	582,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	583,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	584,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	612,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	613,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	614,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	615,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	617,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	618,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	619,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	620,"c:\z88dk\Lib\Config\\..\..\/include/spritepack.h"
	C_LINE	13,"ss.c"
	C_LINE	21,"ss.c"
	C_LINE	0,"globals.h"
	C_LINE	4,"globals.h"
	C_LINE	6,"globals.h"
	C_LINE	7,"globals.h"
	C_LINE	9,"globals.h"
	C_LINE	12,"globals.h"
	C_LINE	14,"globals.h"
	C_LINE	15,"globals.h"
	C_LINE	17,"globals.h"
	C_LINE	18,"globals.h"
	SECTION	code_compiler

; Function my_malloc flags 0x00000200 __smallc 
; void * my_malloc(unsigned int bytes)
; parameter 'unsigned int bytes' at sp+2 size(2)
	C_LINE	18,"globals.h::my_malloc::0::0"
._my_malloc
	ld	hl,0	;const
	push	hl
	call	sp_BlockAlloc
	pop	bc
	ret


	C_LINE	19,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._u_malloc
	defw	_my_malloc + 0
	SECTION	code_compiler
	C_LINE	20,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._u_free
	defw	sp_FreeBlock + 0
	SECTION	code_compiler
	C_LINE	21,"globals.h::my_malloc::0::1"
	C_LINE	22,"globals.h::my_malloc::0::1"
	C_LINE	25,"globals.h::my_malloc::0::1"
	.vpClipStruct defb  1 ,  1  + 18,  1 ,  1  + 30
	.fsClipStruct defb 0, 24, 0, 32
	C_LINE	32,"globals.h::my_malloc::0::1"
	C_LINE	33,"globals.h::my_malloc::0::1"
	C_LINE	34,"globals.h::my_malloc::0::1"
	C_LINE	35,"globals.h::my_malloc::0::1"
	C_LINE	36,"globals.h::my_malloc::0::1"
	C_LINE	37,"globals.h::my_malloc::0::1"
	C_LINE	39,"globals.h::my_malloc::0::1"
._asm_number 
	defb 0
._asm_int
	defw 0
._asm_int_2
	defw 0
._seed	
	defw 0
	C_LINE	52,"globals.h::my_malloc::0::1"
	C_LINE	53,"globals.h::my_malloc::0::1"
	C_LINE	54,"globals.h::my_malloc::0::1"
	C_LINE	55,"globals.h::my_malloc::0::1"
	C_LINE	56,"globals.h::my_malloc::0::1"
	C_LINE	57,"globals.h::my_malloc::0::1"
	C_LINE	58,"globals.h::my_malloc::0::1"
	C_LINE	59,"globals.h::my_malloc::0::1"
	C_LINE	60,"globals.h::my_malloc::0::1"
	C_LINE	64,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._keys
	defw	383
	defw	479
	defw	735
	defw	509
	defw	507
	SECTION	code_compiler
	C_LINE	72,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_r
	defw	2299
	SECTION	code_compiler
	C_LINE	73,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_g
	defw	4349
	SECTION	code_compiler
	C_LINE	74,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_z
	defw	766
	SECTION	code_compiler
	C_LINE	76,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_1
	defw	503
	SECTION	code_compiler
	C_LINE	77,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_2
	defw	759
	SECTION	code_compiler
	C_LINE	78,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_3
	defw	1271
	SECTION	code_compiler
	C_LINE	82,"globals.h::my_malloc::0::1"
	C_LINE	83,"globals.h::my_malloc::0::1"
	C_LINE	84,"globals.h::my_malloc::0::1"
	C_LINE	85,"globals.h::my_malloc::0::1"
	C_LINE	86,"globals.h::my_malloc::0::1"
	C_LINE	87,"globals.h::my_malloc::0::1"
	C_LINE	88,"globals.h::my_malloc::0::1"
	C_LINE	89,"globals.h::my_malloc::0::1"
	C_LINE	91,"globals.h::my_malloc::0::1"
	C_LINE	92,"globals.h::my_malloc::0::1"
	C_LINE	93,"globals.h::my_malloc::0::1"
	C_LINE	95,"globals.h::my_malloc::0::1"
	C_LINE	96,"globals.h::my_malloc::0::1"
	C_LINE	97,"globals.h::my_malloc::0::1"
	C_LINE	98,"globals.h::my_malloc::0::1"
	C_LINE	99,"globals.h::my_malloc::0::1"
	C_LINE	100,"globals.h::my_malloc::0::1"
	C_LINE	101,"globals.h::my_malloc::0::1"
	C_LINE	102,"globals.h::my_malloc::0::1"
	C_LINE	104,"globals.h::my_malloc::0::1"
	C_LINE	105,"globals.h::my_malloc::0::1"
	C_LINE	106,"globals.h::my_malloc::0::1"
	C_LINE	108,"globals.h::my_malloc::0::1"
	C_LINE	110,"globals.h::my_malloc::0::1"
	C_LINE	111,"globals.h::my_malloc::0::1"
	C_LINE	112,"globals.h::my_malloc::0::1"
	C_LINE	113,"globals.h::my_malloc::0::1"
	C_LINE	114,"globals.h::my_malloc::0::1"
	C_LINE	115,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._yOsc
	defb	4
	SECTION	code_compiler
	C_LINE	117,"globals.h::my_malloc::0::1"
	C_LINE	119,"globals.h::my_malloc::0::1"
	C_LINE	29,"ss.c::my_malloc::0::1"
	C_LINE	33,"ss.c::my_malloc::0::1"
	C_LINE	34,"ss.c::my_malloc::0::1"
	C_LINE	35,"ss.c::my_malloc::0::1"
	C_LINE	36,"ss.c::my_malloc::0::1"
	C_LINE	37,"ss.c::my_malloc::0::1"
	C_LINE	38,"ss.c::my_malloc::0::1"
	C_LINE	39,"ss.c::my_malloc::0::1"
	C_LINE	40,"ss.c::my_malloc::0::1"
	C_LINE	41,"ss.c::my_malloc::0::1"
	C_LINE	42,"ss.c::my_malloc::0::1"
	C_LINE	0,"128k.h::my_malloc::0::1"
	C_LINE	2,"128k.h::my_malloc::0::1"

; Function SetRAMBank flags 0x00000200 __smallc 
; void SetRAMBank()
	C_LINE	2,"128k.h::SetRAMBank::0::1"
._SetRAMBank
		.SetRAMBank
				ld	a, b
				or	a
				jp	z, restISR
				xor	a
				ld	i, a
				jp	keepGoing
		.restISR
				ld	a, $f0
				ld	i, a
		.keepGoing
				ld	a, 16
				or	b
				ld	bc, $7ffd
				out (C), a
	ret


	C_LINE	46,"ss.c::SetRAMBank::0::2"
	C_LINE	0,"sound.h::SetRAMBank::0::2"
	C_LINE	25,"sound.h::SetRAMBank::0::2"
	defw 0	 
	C_LINE	31,"sound.h::SetRAMBank::0::2"

; Function ISR flags 0x00000200 __smallc 
; void ISR()
	C_LINE	31,"sound.h::ISR::0::2"
._ISR
		ld  hl, _isrc
		inc (hl)						
		ld  a, (_is128k)
		or  a 
		ret z
		ld  b,  1 
		call SetRAMBank
		call  0xC000 
		ld b, 0
		call SetRAMBank			
	ret


	C_LINE	51,"sound.h::ISR::0::3"
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
	C_LINE	239,"sound.h::ISR::0::3"

; Function arkos_init flags 0x00000200 __smallc 
; void arkos_init()
	C_LINE	239,"sound.h::arkos_init::0::3"
._arkos_init
		ld b,  1 
		call SetRAMBank
		call  0xC81C 				
		ld b, 0
		jp SetRAMBank
	ret


	C_LINE	253,"sound.h::arkos_init::0::4"

; Function arkos_play_music flags 0x00000208 __smallc __z88dk_fastcall 
; void arkos_play_music(unsigned char song_number)
; parameter 'unsigned char song_number' at sp+2 size(1)
	C_LINE	253,"sound.h::arkos_play_music::0::4"
._arkos_play_music
	push	hl
		ld  a, (_is128k)
		or  a
		jr z, apm_no128
		di
		ld b,  1 
		call SetRAMBank
		ld  a, l
		call  0xC7FC 		
		ld b, 0
		call SetRAMBank
		ei
	.apm_no128
	pop	bc
	ret


	C_LINE	275,"sound.h::arkos_play_music::0::5"

; Function play_sfx flags 0x00000208 __smallc __z88dk_fastcall 
; void play_sfx(unsigned char n)
; parameter 'unsigned char n' at sp+2 size(1)
	C_LINE	275,"sound.h::play_sfx::0::5"
._play_sfx
	push	hl
			ld  a, (_is128k)
			or  a
			jr  z, _skip_ay
			di
			ld b,  1 
			call SetRAMBank
			; __FASTCALL__ -> fx_number is in l!
			ld a,  1 
			ld h, 15
			ld e, 50
			ld d, 0
			ld bc, 0
			call  0xC704 
			ld b,0
			call SetRAMBank
			ei
			ret
		._skip_ay
			push ix
			push iy
			ld a, l
			call sound_play
			pop ix
			pop iy
	pop	bc
	ret


	C_LINE	47,"ss.c::play_sfx::0::6"
	C_LINE	0,"zx0.h::play_sfx::0::6"
	C_LINE	7,"zx0.h::play_sfx::0::6"
	C_LINE	8,"zx0.h::play_sfx::0::6"
	C_LINE	10,"zx0.h::play_sfx::0::6"
	; -----------------------------------------------------------------------------
	; ZX0 decoder by Einar Saukas & Urusergi
	; "Standard" version (68 bytes only)
	; -----------------------------------------------------------------------------
	; .Parameters
	;   .HL source address (compressed data)
	;   .DE destination address (decompressing)
	; -----------------------------------------------------------------------------
	.dzx0_standard
	        ld      bc, $ffff               ; preserve default offset 1
	        push    bc
	        inc     bc
	        ld      a, $80
	.dzx0s_literals
	        call    dzx0s_elias             ; obtain length
	        ldir                            ; copy literals
	        add     a, a                    ; copy from last offset or new offset?
	        jr      c, dzx0s_new_offset
	        call    dzx0s_elias             ; obtain length
	.dzx0s_copy
	        ex      (sp), hl                ; preserve source, restore offset
	        push    hl                      ; preserve offset
	        add     hl, de                  ; calculate destination - offset
	        ldir                            ; copy from offset
	        pop     hl                      ; restore offset
	        ex      (sp), hl                ; preserve offset, restore source
	        add     a, a                    ; copy from literals or new offset?
	        jr      nc, dzx0s_literals
	.dzx0s_new_offset
	        pop     bc                      ; discard last offset
	        ld      c, $fe                  ; prepare negative offset
	        call    dzx0s_elias_loop        ; obtain offset MSB
	        inc     c
	        ret     z                       ; check end marker
	        ld      b, c
	        ld      c, (hl)                 ; obtain offset LSB
	        inc     hl
	        rr      b                       ; last offset bit becomes first length bit
	        rr      c
	        push    bc                      ; preserve new offset
	        ld      bc, 1                   ; obtain length
	        call    nc, dzx0s_elias_backtrack
	        inc     bc
	        jr      dzx0s_copy
	.dzx0s_elias
	        inc     c                       ; interlaced Elias gamma coding
	.dzx0s_elias_loop
	        add     a, a
	        jr      nz, dzx0s_elias_skip
	        ld      a, (hl)                 ; load another group of 8 bits
	        inc     hl
	        rla
	.dzx0s_elias_skip
	        ret     c
	.dzx0s_elias_backtrack
	        add     a, a
	        rl      c
	        rl      b
	        jr      dzx0s_elias_loop
	; -----------------------------------------------------------------------------
	C_LINE	76,"zx0.h::play_sfx::0::6"

; Function blackout_everything flags 0x00000200 __smallc 
; void blackout_everything()
	C_LINE	76,"zx0.h::blackout_everything::0::6"
._blackout_everything
			ld  hl, 22528
			ld  de, 22529
			ld  bc, 767
			xor a 
			ld  (hl), a 
			ldir
	ret


	C_LINE	89,"zx0.h::blackout_everything::0::7"

; Function unpack flags 0x00000200 __smallc 
; void unpack(unsigned int source, unsigned int destination)
; parameter 'unsigned int destination' at sp+2 size(2)
; parameter 'unsigned int source' at sp+4 size(2)
	C_LINE	89,"zx0.h::unpack::0::7"
._unpack
	ld	hl,4	;const
	call	l_gintsp	;
	ld	(_ram_address),hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(_ram_destination),hl
		di	
		ld hl, (_ram_address)
		ld de, (_ram_destination)
		call dzx0_standard
		ei
	ret


	C_LINE	48,"ss.c::unpack::0::8"
	C_LINE	0,"printer.h::unpack::0::8"
	C_LINE	6,"printer.h::unpack::0::8"
	._letters
		BINARY "../bin/font.bin"
	._line_buffer
		defw $4000, $4020, $4040, $4060, $4080, $40A0, $40C0, $40E0
		defw $4800, $4820, $4840, $4860, $4880, $48A0, $48C0, $48E0
		defw $5000, $5020, $5040, $5060, $5080, $50A0, $50C0, $50E0
	C_LINE	18,"printer.h::unpack::0::8"

; Function draw_char flags 0x00000200 __smallc 
; void draw_char()
	C_LINE	18,"printer.h::draw_char::0::8"
._draw_char
		._drawchar
			ld	a, (__y)
			add	a, a
			ld	b, 0
			ld	c, a
			ld	hl, _line_buffer
			add	hl, bc
			ld	e, (hl)
			inc	hl
			ld	d, (hl)
			ex	de, hl	
			; hl <= principio de la linea __y
			ld	a, (__x)
			ld	b, 0
			ld	c, a
			add	hl, bc
			; hl <= address.
			ex	de, hl
			; de <= address.
			ld	a, (__t)
			ld	h, 0
			ld	l, a
			add	hl, hl	; * 2
			add	hl, hl	; * 4
			add	hl, hl	; * 8
			ld	bc, _letters
			add	hl, bc
			; Copy 8 bytes
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
			inc d
			inc hl
			ld a, (hl)
			ld (de), a
	ld	hl,__x
	ld	a,(hl)
	inc	(hl)
	ld	l,a
	ld	h,0
	ret


	C_LINE	87,"printer.h::draw_char::0::9"

; Function draw_fast flags 0x00000200 __smallc 
; void draw_fast()
	C_LINE	87,"printer.h::draw_fast::0::9"
._draw_fast
	ld	hl,(__x)
	ld	h,0
	ld	a,88
	add	h
	ld	h,a
	push	hl
	ld	hl,(__y)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	(_gen_pt),hl
		.draw_fast_loop
			ld  hl, (_str_pt)
			ld  a, (hl)
			inc hl
			ld  (_str_pt), hl
			or  a 
			ret z 
			sub 32 
			ld  (__t), a
			call _draw_char
			ld  hl, (_gen_pt)
			ld  a, (__c) 
			ld  (hl), a 
			inc hl
			ld  (_gen_pt), hl
			jr draw_fast_loop
	ret


	C_LINE	121,"printer.h::draw_fast::0::10"

; Function draw_char_by_char flags 0x00000200 __smallc 
; void draw_char_by_char(unsigned char x, unsigned char y, unsigned char * s)
; parameter 'unsigned char * s' at sp+2 size(2)
; parameter 'unsigned char y' at sp+4 size(1)
; parameter 'unsigned char x' at sp+6 size(1)
	C_LINE	121,"printer.h::draw_char_by_char::0::10"
._draw_char_by_char
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,88
	add	h
	ld	h,a
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	(_gen_pt),hl
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)
	ld	(__x),a
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(__y),a
.i_12
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(hl)
	and	a
	jp	z,i_13	;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(hl)
	ld	hl,_rdc
	ld	(hl),a
	cp	13
	jp	nz,i_14	;
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)
	ld	(__x),a
	ld	hl,(__y)
	ld	h,0
	inc	hl
	inc	hl
	ld	a,l
	ld	(__y),a
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,88
	add	h
	ld	h,a
	push	hl
	ld	hl,(__y)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	(_gen_pt),hl
	jp	i_15	;EOS
.i_14
	ld	hl,(_rdc)
	ld	h,0
	ld	bc,-32
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(__t),a
	call	_draw_char
	ld	a,1
	ld	(_gpit),a
	jp	i_18	;EOS
.i_16
	ld	hl,(_gpit)
	ld	h,0
	inc	hl
	inc	hl
	ld	h,0
	ld	a,l
	ld	(_gpit),a
.i_18
	ld	a,(_gpit)
	sub	8
	jp	nc,i_17	;
	ld	hl,(_gen_pt)
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	ld	bc,64
	add	hl,bc
	pop	de
	ld	a,l
	ld	(de),a
					halt
	jp	i_16	;EOS
.i_17
	ld	hl,(_gen_pt)
	inc	hl
	ld	(_gen_pt),hl
.i_15
	pop	de
	pop	hl
	inc	hl
	push	hl
	push	de
	jp	i_12	;EOS
.i_13
	ret


	C_LINE	151,"printer.h::draw_char_by_char::0::15"

; Function any_key flags 0x00000200 __smallc 
; unsigned char any_key()
	C_LINE	151,"printer.h::any_key::0::15"
._any_key
			ld  hl, 0
			xor a
			in  a, (0xfe)
			and 0x1f
			cp  0x1f		 
			ret z
			ld  l, 1
	ret


	C_LINE	165,"printer.h::any_key::0::16"

; Function fix_sprites flags 0x00000200 __smallc 
; void fix_sprites()
	C_LINE	165,"printer.h::fix_sprites::0::16"
._fix_sprites
		.vtc
			ld  c, 0 						 
			ld  a, 6
			add a, l
			ld  l, a
			jp  nc, vtc_noinc1
			inc h
		.vtc_noinc1 						 
		.vtc_loop
			ld  a, (hl)
			or  a 
			jr  z, vtc_fin 					 
			inc hl 
			ld  l, (hl)
			ld  h, a 						 
			push hl 
			ld  a, c 
			cp  b
			jr  c, vtc_next
			ld  a, 7
			add a, l
			ld  l, a
			jp  nc, vtc_noinc2 
			inc h
		.vtc_noinc2 
			ld (hl), SPNullSprPtr%256
			inc hl
			ld (hl), SPNullSprPtr/256
		.vtc_next
			inc c
			pop hl 
			jr  vtc_loop
		.vtc_fin
	ret


	C_LINE	49,"ss.c::fix_sprites::0::17"
	C_LINE	0,"menu.h::fix_sprites::0::17"
	C_LINE	1,"menu.h::fix_sprites::0::17"
	C_LINE	2,"menu.h::fix_sprites::0::17"
	C_LINE	13,"menu.h::fix_sprites::0::17"
	C_LINE	14,"menu.h::fix_sprites::0::17"
	C_LINE	15,"menu.h::fix_sprites::0::17"
	C_LINE	16,"menu.h::fix_sprites::0::17"
	C_LINE	18,"menu.h::fix_sprites::0::17"
	C_LINE	19,"menu.h::fix_sprites::0::17"
	C_LINE	20,"menu.h::fix_sprites::0::17"
	C_LINE	22,"menu.h::fix_sprites::0::17"
	SECTION	data_compiler
._name_levels
	defw	_name_level1 + 0
	defw	_name_level2 + 0
	defw	_name_level3 + 0
	defw	_name_level4 + 0
	SECTION	code_compiler
	C_LINE	23,"menu.h::fix_sprites::0::17"
	SECTION	data_compiler
._passes
	defw	_pass1 + 0
	defw	_pass2 + 0
	defw	_pass3 + 0
	SECTION	code_compiler
	C_LINE	25,"menu.h::fix_sprites::0::17"
	._name_level1
		defm "  JUNKYARD  "
		defb 0
	._name_level2
		defm "  DEAD JOE  "
		defb 0
	._name_level3
		defm "SEVERAL SINS"
		defb 0
	._name_level4
		defm "KEWPIE  DOLL"
		defb 0
	._pass1
		defm "TORTILLA"
		defb 0
	._pass2
		defm "CORCHONETA"
		defb 0
	._pass3
		defm "ENCUERA"
		defb 0
	C_LINE	51,"menu.h::fix_sprites::0::17"
	SECTION	data_compiler
._cad_level
	defw	i_1+0
	SECTION	code_compiler
	C_LINE	53,"menu.h::fix_sprites::0::17"

; Function start_game_from flags 0x00000200 __smallc 
; void start_game_from(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	53,"menu.h::start_game_from::0::17"
._start_game_from
	ld	hl,6	;const
	call	_arkos_play_music
.i_22
	call	_blackout_everything
	ld	hl,_scr_menu_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,4	;const
	call	_arkos_play_music
	ld	hl,(_cad_level)
	ld	bc,7
	add	hl,bc
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	add	49
	pop	de
	ld	(de),a
	ld	hl,12	;const
	push	hl
	ld	hl,11	;const
	push	hl
	ld	hl,(_cad_level)
	push	hl
	call	_draw_char_by_char
	pop	bc
	pop	bc
	pop	bc
	ld	hl,10	;const
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,_name_levels
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	push	hl
	call	_draw_char_by_char
	pop	bc
	pop	bc
	pop	bc
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	xor	a
	sub	l
	jp	nc,i_24	;
	ld	a,12
	ld	(__x),a
	ld	a,15
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+9
	ld	(_str_pt),hl
	call	_draw_fast
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	cp	2
	jp	nz,i_25	;
	ld	hl,11	;const
	jp	i_26	;
.i_25
	ld	hl,12	;const
.i_26
	ld	a,l
	ld	(__x),a
	ld	a,16
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,_passes
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	dec	hl
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	ld	(_str_pt),hl
	call	_draw_fast
.i_24
	ld	hl,250	;const
	push	hl
	call	_espera_activa
	pop	bc
	ld	hl,6	;const
	call	_arkos_play_music
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_game
	pop	bc
	ld	a,h
	or	l
	jp	z,i_27	;
	ld	hl,2	;const
	add	hl,sp
	inc	(hl)
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	cp	4
	jp	nz,i_28	;
.i_29
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_29	;EOS
.i_30
	call	_blackout_everything
	ld	hl,_scr_final_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	a,8
	ld	(__x),a
	ld	a,19
	ld	(__y),a
	ld	a,71
	ld	(__c),a
	ld	hl,i_1+18
	ld	(_str_pt),hl
	call	_draw_fast
	ld	hl,5	;const
	call	_arkos_play_music
	ld	hl,32767	;const
	push	hl
	call	_espera_activa
	pop	bc
	jp	i_23	;EOS
	defc	i_28 = i_31
	defc	i_27 = i_23
	jp	i_22	;EOS
	defc	i_31 = i_22
.i_23
	ret


	C_LINE	101,"menu.h::start_game_from::0::23"
	C_LINE	103,"menu.h::start_game_from::0::23"

; Function get_password flags 0x00000200 __smallc 
; unsigned char get_password()
	C_LINE	103,"menu.h::get_password::0::23"
._get_password
	call	_blackout_everything
	ld	hl,_scr_menu_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	a,9
	ld	(__x),a
	ld	a,11
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+35
	ld	(_str_pt),hl
	call	_draw_fast
	xor	a
	ld	(_rda),a
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),35
	ld	hl,_password
	push	hl
	ld	hl,(_rda)
	ld	h,0
	inc	hl
	pop	de
	add	hl,de
	ld	(hl),0
.i_32
	ld	hl,(_rda)
	ld	h,0
	ld	a,l
	rrca
	and	127
	ld	l,a
	ld	de,16
	ex	de,hl
	and	a
	sbc	hl,de
	ld	a,l
	ld	(__x),a
	ld	a,13
	ld	(__y),a
	ld	a,71
	ld	(__c),a
	ld	hl,_password
	ld	(_str_pt),hl
	call	_draw_fast
	call	sp_GetKey
	ld	a,l
	ld	hl,_rdb
	ld	(hl),a
	cp	12
	jp	nz,i_35	;
	ld	hl,(_rda)
	ld	h,0
	xor	a
	sub	l
	jp	nc,i_35	;
	defc	i_35 = i_34
.i_36_i_35
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),32
	ld	a,5
	ld	(__x),a
	ld	a,13
	ld	(__y),a
	ld	a,71
	ld	(__c),a
	ld	hl,i_1+50
	ld	(_str_pt),hl
	call	_draw_fast
	ld	hl,_rda
	ld	a,(hl)
	dec	(hl)
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),35
	ld	hl,_password
	push	hl
	ld	hl,(_rda)
	ld	h,0
	inc	hl
	pop	de
	add	hl,de
	ld	(hl),0
.i_34
	ld	hl,(_rdb)
	ld	h,0
	ld	a,l
	cp	13
	jp	z,i_33	;EOS
.i_37
	ld	hl,(_rdb)
	ld	h,0
	ld	de,90
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_38	;
	ld	hl,(_rdb)
	ld	h,0
	ld	bc,-32
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_rdb),a
.i_38
	ld	hl,(_rdb)
	ld	h,0
	ld	de,65
	ex	de,hl
	call	l_uge
	jp	nc,i_40	;
	ld	a,(_rdb)
	cp	91
	jp	nc,i_40	;
	ld	a,(_rda)
	sub	20
	jp	nc,i_40	;
	defc	i_40 = i_39
.i_41_i_40
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ex	de,hl
	ld	hl,_rdb
	ld	a,(hl)
	ld	(de),a
	ld	hl,_password
	push	hl
	ld	hl,(_rda)
	ld	h,0
	inc	hl
	pop	de
	add	hl,de
	ld	(hl),35
	ld	hl,_password
	push	hl
	ld	hl,(_rda)
	ld	h,0
	inc	hl
	inc	hl
	pop	de
	add	hl,de
	ld	(hl),0
	ld	hl,_rda
	ld	a,(hl)
	inc	(hl)
	jp	i_32	;EOS
	defc	i_39 = i_32
.i_33
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),0
	ld	hl,(_rda)
	ld	h,0
	xor	a
	sub	l
	jp	nc,i_42	;
	xor	a
	ld	(_gpjt),a
	jp	i_45	;EOS
.i_43
	ld	hl,_gpjt
	ld	a,(hl)
	inc	(hl)
.i_45
	ld	a,(_gpjt)
	sub	3
	jp	nc,i_44	;
	ld	hl,_passes
	push	hl
	ld	hl,(_gpjt)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	ld	(_gen_pt),hl
	xor	a
	ld	(_gpit),a
	jp	i_48	;EOS
.i_46
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_48
	ld	de,(_gpit)
	ld	d,0
	ld	hl,(_rda)
	ld	h,d
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_47	;
	ld	de,(_gen_pt)
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	de,_password
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	l,(hl)
	ld	h,0
	pop	de
	call	l_ne
	jp	c,i_47	;EOS
	jp	i_46	;EOS
	defc	i_49 = i_46
.i_47
	ld	de,(_gpit)
	ld	d,0
	ld	hl,(_rda)
	ld	h,d
	call	l_eq
	jp	nc,i_50	;
	ld	hl,(_gpjt)
	inc	l
	ld	h,0
	ret
	defc	i_50 = i_43
.i_44
.i_42
	ld	hl,0	;const
	ret


	C_LINE	162,"menu.h::get_password::0::33"

; Function menu flags 0x00000200 __smallc 
; void menu()
	C_LINE	162,"menu.h::menu::0::33"
._menu
	ld	hl,1	;const
	ld	a,l
	ld	(_denew),a
.i_51
.i_53
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_53	;EOS
.i_54
	ld	hl,(_denew)
	ld	a,l
	and	a
	jp	z,i_55	;
	call	_blackout_everything
	ld	hl,_scr_menu_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,5	;const
	call	_arkos_play_music
	xor	a
	ld	(_denew),a
.i_55
	ld	a,4
	ld	(__x),a
	ld	a,21
	ld	(__y),a
	ld	a,71
	ld	(__c),a
	ld	hl,i_1+74
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,11
	ld	(__x),a
	ld	a,12
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+99
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,11
	ld	(__x),a
	ld	a,13
	ld	(__y),a
	ld	hl,i_1+110
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,11
	ld	(__x),a
	ld	a,14
	ld	(__y),a
	ld	hl,i_1+121
	ld	(_str_pt),hl
	call	_draw_fast
.i_56
	ld	hl,(_key_1)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_58	;
	ld	hl,0	;const
	push	hl
	call	_start_game_from
	pop	bc
	ld	a,1
	ld	(_denew),a
	jp	i_57	;EOS
.i_58
	ld	hl,(_key_2)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_60	;
	call	_get_password
	push	hl
	call	_start_game_from
	pop	bc
	ld	a,1
	ld	(_denew),a
	jp	i_57	;EOS
.i_60
	ld	hl,(_key_3)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_62	;
.i_63
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_63	;EOS
.i_64
.i_65
	ld	a,11
	ld	(__x),a
	ld	a,12
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+132
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,13
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+143
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,14
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+154
	ld	(_str_pt),hl
	call	_draw_fast
	ld	hl,(_key_1)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_67	;
	ld	hl,sp_JoyKeyboard
	ld	(_joyfunc),hl
	jp	i_66	;EOS
.i_67
	ld	hl,(_key_2)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_69	;
	ld	hl,sp_JoySinclair1
	ld	(_joyfunc),hl
	jp	i_66	;EOS
.i_69
	ld	hl,(_key_3)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_71	;
	ld	hl,sp_JoyKempston
	ld	(_joyfunc),hl
	jp	i_66	;EOS
	defc	i_71 = i_65
	defc	i_70 = i_65
	defc	i_68 = i_65
	jp	i_57	;EOS
	defc	i_66 = i_57
	defc	i_62 = i_56
	defc	i_61 = i_56
	defc	i_59 = i_56
	jp	i_51	;EOS
	defc	i_57 = i_51
.i_52
	ret


	C_LINE	50,"ss.c::menu::0::44"
	C_LINE	0,"supertileset.h::menu::0::44"
	C_LINE	3,"supertileset.h::menu::0::44"
	C_LINE	5,"supertileset.h::menu::0::44"
._supertiles
; [TILE 0]
	defb 7, 0, 7, 0, 7, 0, 7, 0
; 0
	defb 1, 1, 1, 2, 71, 3, 7, 4
	defb 1, 2, 1, 2, 71, 5, 7, 4
	defb 1, 2, 1, 6, 71, 5, 7, 7
; 7
	defb 69, 8, 5, 9, 69, 10, 5, 11
	defb 69, 12, 5, 13, 69, 14, 5, 15
	defb 70, 16, 70, 17, 6, 21, 6, 22
	defb 70, 16, 70, 20, 6, 21, 6, 22
; 22	
	defb 71, 23, 7, 24, 71, 25, 7, 26
	defb 71, 27, 7, 28, 79, 29, 15, 30
	defb 71, 31, 7, 32, 71, 33, 7, 34
; 34
	defb 7, 35, 7, 36, 2, 37, 2, 38
	defb 7, 39, 7, 40, 2, 41, 2, 41
	defb 7, 42, 7, 43, 2, 37, 2, 38
; 44
	defb 2, 44, 2, 44, 5, 45, 5, 46
; 46
	defb 68, 47, 68, 48, 4, 49, 4, 50
; 50
; [TILE 16]
	defb 5, 51, 5, 52, 5, 0, 5, 53
	defb 5, 54, 5, 55, 5, 56, 5, 57
	defb 5, 58, 5, 59, 5, 60, 5, 61
	defb 5, 62, 5, 63, 5, 64, 5, 65
	defb 5, 66, 5, 67, 5, 68, 5, 69
	defb 5, 70, 5, 65, 5, 70, 5, 65
	defb 5, 68, 5, 71, 5, 68, 5, 71
	defb 5, 72, 5, 73, 5, 74, 5, 75
	defb 5, 76, 5, 77, 5, 78, 5, 79
	defb 5, 80, 5, 81, 5, 82, 5, 83
	defb 5, 84, 5, 85, 5, 86, 5, 87
; 87		
	defb 71, 88, 7, 89, 7, 90, 69, 91
; 91
	;defb 71, 92, 70, 93, 70, 94, 6, 95
	defb 79, 92, 78, 93, 78, 94, 14, 95
; 95
	defb 70, 96, 70, 97, 6, 98, 6, 99
	defb 70, 100, 70, 101, 6, 102, 6, 103
	defb 70, 104, 70, 105, 6, 106, 6, 107
; 107
; [TILE 32]
	defb 71, 108, 7, 109, 71, 110, 7, 111
	defb 71, 112, 7, 113, 7, 114, 7, 115
; 115
	defb 70, 116, 6, 117, 7, 0, 7, 0
	defb 6, 118, 6, 119, 7, 0, 7, 0
	defb 6, 120, 6, 121, 7, 0, 7, 0
; 121
	defb 7, 122, 7, 123, 7, 124, 7, 125
	defb 7, 126, 7, 123, 7, 127, 7, 125
	defb 7, 126, 7, 128, 7, 127, 7, 129
	defb 7, 130, 7, 131, 7, 132, 7, 133
	defb 7, 134, 7, 131, 7, 135, 7, 133
	defb 7, 134, 7, 136, 7, 135, 7, 137
; 137
	defb 7, 138, 7, 139, 7, 140, 7, 141
; 141
	defb 7, 142, 7, 143, 7, 144, 7, 145
; 145
	defb 108, 146, 108, 147, 44, 148, 44, 149
	defb 108, 150, 108, 151, 44, 148, 44, 149
; 153
	defb 65, 154, 65, 155, 65, 156, 65, 157
; 157
; [TILE 48]
	defb 66, 158, 2, 158, 70, 159, 6, 160
	defb 68, 158, 4, 158, 70, 161, 6, 162
; 162
	defb 7, 163, 70, 164, 70, 165, 6, 166
; 166
	defb 71, 167, 69, 168, 69, 167, 5, 168
	defb 69, 169, 71, 170, 6, 169, 69, 170
; 170
	defb 70, 171, 68, 172, 68, 173, 4, 174
; 174
	defb 5, 175, 5, 176, 5, 177, 5, 178
	defb 5, 179, 5, 180, 5, 181, 5, 182
; 182
	defb 15, 183, 15, 183, 15, 183, 15, 183
; 183
	defb 70, 184, 70, 185, 70, 186, 6, 187
; 187
	defb 71, 188, 70, 189, 70, 190, 6, 191
; 191
	defb 2, 192, 2, 193, 2, 194, 2, 195
	defb 2, 193, 2, 196, 2, 195, 2, 197
	defb 2, 198, 2, 199, 2, 0, 2, 200
	defb 2, 201, 2, 202, 2, 203, 2, 0
	defb 2, 0, 2, 204, 2, 0, 2, 204
; [TILE 64]
	defb 2, 205, 2, 0, 2, 205, 2, 0
	defb 2, 206, 2, 207, 2, 207, 2, 206
	defb 2, 0, 2, 204, 2, 0, 2, 208
	defb 2, 205, 2, 0, 2, 209, 2, 0
	defb 2, 210, 2, 211, 2, 212, 2, 213
	defb 2, 214, 2, 215, 2, 213, 2, 216
; 216
	defb 5, 217, 5, 217, 5, 217, 5, 217
	defb 5, 218, 5, 219, 5, 0, 5, 220
	defb 5, 221, 5, 222, 5, 223, 5, 0
	defb 5, 224, 5, 225, 5, 226, 5, 227
	defb 5, 228, 5, 217, 5, 229, 5, 230
	defb 21, 0, 21, 0, 21, 0, 21, 0
	defb 21, 231, 21, 231, 21, 232, 21, 232
; 232
	defb 3, 0, 3, 233, 3, 0, 3, 0
	defb 3, 0, 3, 0, 3, 233, 3, 234
	defb 3, 235, 3, 236, 3, 0, 3, 0
; [TILE 80]
	defb 3, 237, 3, 238, 3, 0, 3, 0
	defb 3, 0, 3, 233, 3, 239, 3, 0
	defb 3, 233, 3, 0, 3, 0, 3, 0
	defb 3, 240, 3, 0, 3, 241, 3, 0
	defb 3, 0, 3, 242, 3, 0, 3, 243
	defb 3, 0, 3, 244, 3, 233, 3, 244
	defb 3, 245, 3, 233, 3, 245, 3, 0
	defb 3, 0, 3, 0, 3, 0, 3, 0
	defb 2, 0, 2, 0, 2, 0, 2, 0
	defb 5, 0, 5, 0, 5, 0, 5, 0
;
	defb 5, 0, 5, 0, 5, 18, 5, 19
;
	defb 87, 108, 23, 109, 87, 110, 23, 111
;  0x05 
	defb 70, 116, 6, 117, 5, 217, 5, 217
	defb 6, 118, 6, 119, 5, 217, 5, 217
	defb 6, 120, 6, 121, 5, 217, 5, 217
;  0x02 
	defb 70, 116, 6, 117, 21, 0, 21, 0
; [TILE 96]
	defb 6, 118, 6, 119, 21, 0, 21, 0
	defb 6, 120, 6, 121, 21, 0, 21, 0
; Mas cajas
	defb 70, 163, 6, 164, 6, 165, 6, 166
	defb 68, 163, 5, 164, 5, 165, 5, 166
; Alcantarilla ALT (cyan)
	defb 5, 122, 5, 123, 5, 124, 5, 125
	defb 5, 126, 5, 123, 5, 127, 5, 125
	defb 5, 126, 5, 128, 5, 127, 5, 129
	defb 5, 130, 5, 131, 5, 132, 5, 133
	defb 5, 134, 5, 131, 5, 135, 5, 133
	defb 5, 134, 5, 136, 5, 135, 5, 137
	defb 5, 138, 5, 139, 5, 140, 5, 141
	defb 69, 142, 5, 143, 69, 144, 5, 145
; Cielo ALT (anocheciendo)
	defb 6, 217, 6, 217, 6, 217, 6, 217
	defb 6, 218, 6, 219, 6, 0, 6, 220
	defb 6, 221, 6, 222, 6, 223, 6, 0
	defb 6, 224, 6, 225, 6, 226, 6, 227
; [TILE 112]
	defb 6, 228, 6, 217, 6, 229, 6, 230
	defb 30, 0, 30, 0, 30, 0, 30, 0
	defb 30, 231, 30, 231, 30, 232, 30, 232
; Fondo ventanas ALT (anocheciendo)
	defb 67, 51, 67, 52, 67, 0, 67, 53
	defb 67, 54, 67, 55, 67, 56, 67, 57
	defb 67, 58, 67, 59, 67, 60, 67, 61
	defb 67, 62, 67, 63, 67, 64, 67, 65
	defb 67, 66, 67, 67, 67, 68, 67, 69
	defb 67, 70, 67, 65, 67, 70, 67, 65
	defb 67, 68, 67, 71, 67, 68, 67, 71
	defb 67, 72, 67, 73, 67, 74, 67, 75
	defb 67, 76, 67, 77, 67, 78, 67, 79
	defb 67, 80, 67, 81, 67, 82, 67, 83
	defb 67, 84, 67, 85, 67, 86, 67, 87
	defb 67, 175, 67, 176, 67, 177, 67, 178
	defb 67, 179, 67, 180, 67, 181, 67, 182
; [TILE 128]
; Pin�culo ALT (anocheciendo)
	defb 70, 108, 6, 109, 70, 110, 6, 111
	defb 70, 112, 6, 113, 6, 114, 6, 115
; Pin�culo fondo rosa ALT (anocheciendo)
	defb 94, 108, 30, 109, 94, 110, 30, 111
; Plataformas ALT
; Yellow
	defb 70, 116, 70, 117, 6, 217, 6, 217
	defb 70, 118, 70, 119, 6, 217, 6, 217
	defb 70, 120, 70, 121, 6, 217, 6, 217
; Magenta
	defb 70, 116, 6, 117, 30, 0, 30, 0
	defb 6, 118, 6, 119, 30, 0, 30, 0
	defb 6, 120, 6, 121, 30, 0, 30, 0
; Empty yellow
	defb 6, 0, 6, 0, 6, 0, 6, 0
; Dirt blocks
	defb 98, 130, 34, 131, 98, 132, 34, 133
	defb 34, 134, 34, 131, 34, 135, 34, 133
	defb 34, 134, 35, 136, 34, 135, 35, 137
; Alt empty rails
	defb 7, 134, 7, 131, 5, 18, 5, 19
	defb 5, 134, 5, 131, 5, 18, 5, 19
; Alt half platforms
	defb 70, 116, 70, 117, 7, 134, 7, 131
; [TILE 144]	
	defb 70, 116, 70, 117, 5, 134, 5, 131
; Alt sky empty rails
	defb 30, 231, 30, 231, 5, 18, 5, 19
; FINI
	C_LINE	51,"ss.c::menu::0::44"
	C_LINE	0,"tileset.h::menu::0::44"
	C_LINE	4,"tileset.h::menu::0::44"
	SECTION	data_compiler
._tileset
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	93
	defb	238
	defb	119
	defb	187
	defb	85
	defb	170
	defb	85
	defb	34
	defb	221
	defb	238
	defb	119
	defb	187
	defb	85
	defb	170
	defb	85
	defb	162
	defb	0
	defb	126
	defb	62
	defb	126
	defb	58
	defb	94
	defb	42
	defb	20
	defb	0
	defb	171
	defb	95
	defb	191
	defb	95
	defb	191
	defb	127
	defb	171
	defb	0
	defb	254
	defb	254
	defb	254
	defb	254
	defb	254
	defb	254
	defb	254
	defb	220
	defb	238
	defb	119
	defb	187
	defb	85
	defb	170
	defb	85
	defb	160
	defb	0
	defb	170
	defb	94
	defb	186
	defb	94
	defb	170
	defb	84
	defb	168
	defb	15
	defb	47
	defb	79
	defb	79
	defb	64
	defb	79
	defb	64
	defb	67
	defb	208
	defb	208
	defb	208
	defb	208
	defb	0
	defb	208
	defb	0
	defb	64
	defb	35
	defb	17
	defb	12
	defb	2
	defb	1
	defb	0
	defb	2
	defb	3
	defb	64
	defb	64
	defb	64
	defb	64
	defb	0
	defb	192
	defb	32
	defb	16
	defb	3
	defb	3
	defb	3
	defb	3
	defb	3
	defb	3
	defb	11
	defb	19
	defb	72
	defb	72
	defb	72
	defb	80
	defb	64
	defb	64
	defb	64
	defb	64
	defb	35
	defb	35
	defb	35
	defb	19
	defb	8
	defb	7
	defb	0
	defb	3
	defb	64
	defb	64
	defb	64
	defb	64
	defb	0
	defb	96
	defb	16
	defb	72
	defb	0
	defb	255
	defb	255
	defb	0
	defb	48
	defb	24
	defb	9
	defb	3
	defb	4
	defb	245
	defb	245
	defb	52
	defb	100
	defb	200
	defb	144
	defb	32
	defb	0
	defb	0
	defb	0
	defb	0
	defb	223
	defb	159
	defb	31
	defb	31
	defb	0
	defb	0
	defb	0
	defb	0
	defb	127
	defb	85
	defb	0
	defb	0
	defb	0
	defb	255
	defb	255
	defb	48
	defb	96
	defb	192
	defb	128
	defb	0
	defb	6
	defb	12
	defb	24
	defb	48
	defb	255
	defb	255
	defb	0
	defb	0
	defb	0
	defb	128
	defb	192
	defb	0
	defb	255
	defb	255
	defb	0
	defb	0
	defb	0
	defb	15
	defb	58
	defb	127
	defb	96
	defb	69
	defb	74
	defb	69
	defb	0
	defb	255
	defb	170
	defb	255
	defb	3
	defb	71
	defb	163
	defb	71
	defb	74
	defb	69
	defb	74
	defb	69
	defb	74
	defb	197
	defb	202
	defb	192
	defb	163
	defb	71
	defb	163
	defb	71
	defb	163
	defb	71
	defb	135
	defb	15
	defb	0
	defb	255
	defb	170
	defb	255
	defb	128
	defb	197
	defb	138
	defb	197
	defb	0
	defb	255
	defb	170
	defb	255
	defb	3
	defb	71
	defb	171
	defb	71
	defb	138
	defb	197
	defb	138
	defb	197
	defb	138
	defb	197
	defb	138
	defb	192
	defb	171
	defb	71
	defb	171
	defb	71
	defb	171
	defb	71
	defb	171
	defb	3
	defb	0
	defb	255
	defb	170
	defb	255
	defb	192
	defb	229
	defb	194
	defb	229
	defb	0
	defb	240
	defb	188
	defb	254
	defb	6
	defb	66
	defb	162
	defb	82
	defb	194
	defb	229
	defb	194
	defb	229
	defb	194
	defb	229
	defb	194
	defb	224
	defb	162
	defb	82
	defb	162
	defb	82
	defb	163
	defb	83
	defb	163
	defb	3
	defb	224
	defb	245
	defb	255
	defb	207
	defb	183
	defb	183
	defb	207
	defb	255
	defb	27
	defb	119
	defb	235
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	162
	defb	106
	defb	170
	defb	255
	defb	0
	defb	255
	defb	255
	defb	255
	defb	34
	defb	187
	defb	162
	defb	255
	defb	0
	defb	255
	defb	128
	defb	213
	defb	255
	defb	255
	defb	127
	defb	255
	defb	255
	defb	255
	defb	3
	defb	87
	defb	255
	defb	255
	defb	255
	defb	215
	defb	255
	defb	255
	defb	255
	defb	255
	defb	170
	defb	85
	defb	170
	defb	255
	defb	0
	defb	255
	defb	176
	defb	221
	defb	175
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	7
	defb	95
	defb	255
	defb	231
	defb	219
	defb	219
	defb	231
	defb	255
	defb	255
	defb	170
	defb	85
	defb	162
	defb	85
	defb	0
	defb	85
	defb	0
	defb	21
	defb	8
	defb	7
	defb	0
	defb	223
	defb	159
	defb	31
	defb	31
	defb	80
	defb	32
	defb	192
	defb	0
	defb	127
	defb	85
	defb	0
	defb	0
	defb	164
	defb	91
	defb	190
	defb	253
	defb	175
	defb	86
	defb	191
	defb	125
	defb	74
	defb	255
	defb	183
	defb	107
	defb	215
	defb	254
	defb	223
	defb	175
	defb	191
	defb	247
	defb	251
	defb	219
	defb	201
	defb	193
	defb	136
	defb	129
	defb	254
	defb	219
	defb	182
	defb	182
	defb	54
	defb	38
	defb	6
	defb	34
	defb	0
	defb	0
	defb	1
	defb	0
	defb	1
	defb	0
	defb	1
	defb	87
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	245
	defb	8
	defb	0
	defb	8
	defb	0
	defb	8
	defb	0
	defb	8
	defb	0
	defb	0
	defb	0
	defb	255
	defb	128
	defb	0
	defb	128
	defb	0
	defb	128
	defb	0
	defb	0
	defb	255
	defb	0
	defb	0
	defb	0
	defb	7
	defb	24
	defb	0
	defb	129
	defb	2
	defb	132
	defb	9
	defb	130
	defb	17
	defb	131
	defb	64
	defb	0
	defb	87
	defb	160
	defb	64
	defb	135
	defb	24
	defb	34
	defb	0
	defb	0
	defb	255
	defb	0
	defb	0
	defb	0
	defb	224
	defb	28
	defb	0
	defb	0
	defb	255
	defb	0
	defb	1
	defb	0
	defb	1
	defb	0
	defb	7
	defb	2
	defb	241
	defb	4
	defb	2
	defb	225
	defb	24
	defb	132
	defb	1
	defb	128
	defb	65
	defb	160
	defb	81
	defb	40
	defb	153
	defb	12
	defb	38
	defb	138
	defb	4
	defb	140
	defb	21
	defb	137
	defb	26
	defb	138
	defb	69
	defb	144
	defb	132
	defb	32
	defb	85
	defb	0
	defb	68
	defb	128
	defb	26
	defb	138
	defb	254
	defb	6
	defb	254
	defb	134
	defb	10
	defb	254
	defb	85
	defb	128
	defb	4
	defb	128
	defb	85
	defb	128
	defb	4
	defb	128
	defb	82
	defb	41
	defb	5
	defb	32
	defb	84
	defb	34
	defb	0
	defb	32
	defb	85
	defb	8
	defb	37
	defb	0
	defb	165
	defb	144
	defb	69
	defb	16
	defb	85
	defb	32
	defb	1
	defb	32
	defb	85
	defb	32
	defb	1
	defb	32
	defb	69
	defb	16
	defb	127
	defb	32
	defb	127
	defb	33
	defb	81
	defb	63
	defb	134
	defb	14
	defb	134
	defb	14
	defb	150
	defb	46
	defb	134
	defb	14
	defb	65
	defb	35
	defb	65
	defb	35
	defb	69
	defb	43
	defb	65
	defb	35
	defb	134
	defb	14
	defb	135
	defb	12
	defb	148
	defb	12
	defb	134
	defb	12
	defb	85
	defb	0
	defb	255
	defb	0
	defb	0
	defb	0
	defb	235
	defb	0
	defb	132
	defb	12
	defb	134
	defb	12
	defb	149
	defb	254
	defb	4
	defb	254
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	219
	defb	73
	defb	73
	defb	85
	defb	0
	defb	255
	defb	0
	defb	0
	defb	0
	defb	90
	defb	128
	defb	65
	defb	35
	defb	225
	defb	3
	defb	37
	defb	3
	defb	33
	defb	3
	defb	0
	defb	128
	defb	0
	defb	128
	defb	128
	defb	109
	defb	36
	defb	36
	defb	33
	defb	3
	defb	33
	defb	3
	defb	37
	defb	191
	defb	129
	defb	191
	defb	10
	defb	1
	defb	2
	defb	0
	defb	2
	defb	0
	defb	2
	defb	0
	defb	251
	defb	85
	defb	3
	defb	1
	defb	1
	defb	1
	defb	1
	defb	1
	defb	2
	defb	1
	defb	11
	defb	21
	defb	8
	defb	16
	defb	0
	defb	16
	defb	1
	defb	3
	defb	255
	defb	85
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	16
	defb	0
	defb	20
	defb	11
	defb	1
	defb	0
	defb	1
	defb	0
	defb	0
	defb	0
	defb	1
	defb	250
	defb	5
	defb	3
	defb	7
	defb	0
	defb	1
	defb	10
	defb	21
	defb	0
	defb	16
	defb	0
	defb	16
	defb	131
	defb	71
	defb	235
	defb	85
	defb	2
	defb	1
	defb	0
	defb	0
	defb	255
	defb	168
	defb	241
	defb	225
	defb	193
	defb	195
	defb	134
	defb	188
	defb	255
	defb	42
	defb	13
	defb	134
	defb	3
	defb	195
	defb	97
	defb	61
	defb	148
	defb	134
	defb	195
	defb	193
	defb	97
	defb	241
	defb	84
	defb	171
	defb	53
	defb	97
	defb	193
	defb	130
	defb	5
	defb	130
	defb	20
	defb	232
	defb	0
	defb	127
	defb	117
	defb	126
	defb	119
	defb	107
	defb	69
	defb	110
	defb	0
	defb	254
	defb	212
	defb	236
	defb	212
	defb	238
	defb	192
	defb	232
	defb	84
	defb	122
	defb	84
	defb	110
	defb	85
	defb	123
	defb	64
	defb	0
	defb	252
	defb	248
	defb	84
	defb	238
	defb	212
	defb	252
	defb	0
	defb	0
	defb	0
	defb	235
	defb	4
	defb	255
	defb	247
	defb	191
	defb	85
	defb	0
	defb	0
	defb	255
	defb	0
	defb	255
	defb	213
	defb	251
	defb	223
	defb	0
	defb	125
	defb	127
	defb	85
	defb	58
	defb	117
	defb	58
	defb	0
	defb	90
	defb	197
	defb	130
	defb	5
	defb	138
	defb	64
	defb	138
	defb	0
	defb	170
	defb	0
	defb	253
	defb	0
	defb	255
	defb	87
	defb	255
	defb	253
	defb	0
	defb	0
	defb	122
	defb	0
	defb	255
	defb	255
	defb	255
	defb	85
	defb	0
	defb	80
	defb	168
	defb	125
	defb	168
	defb	20
	defb	42
	defb	0
	defb	168
	defb	5
	defb	42
	defb	125
	defb	43
	defb	21
	defb	170
	defb	0
	defb	128
	defb	0
	defb	255
	defb	0
	defb	255
	defb	119
	defb	191
	defb	21
	defb	0
	defb	0
	defb	255
	defb	0
	defb	255
	defb	215
	defb	251
	defb	222
	defb	0
	defb	125
	defb	255
	defb	85
	defb	250
	defb	245
	defb	186
	defb	0
	defb	186
	defb	214
	defb	138
	defb	6
	defb	142
	defb	70
	defb	142
	defb	0
	defb	138
	defb	1
	defb	3
	defb	3
	defb	3
	defb	11
	defb	27
	defb	10
	defb	5
	defb	128
	defb	128
	defb	192
	defb	128
	defb	208
	defb	152
	defb	80
	defb	160
	defb	4
	defb	22
	defb	55
	defb	23
	defb	11
	defb	14
	defb	45
	defb	108
	defb	0
	defb	40
	defb	76
	defb	232
	defb	208
	defb	32
	defb	148
	defb	38
	defb	46
	defb	23
	defb	31
	defb	95
	defb	222
	defb	93
	defb	44
	defb	62
	defb	84
	defb	168
	defb	240
	defb	250
	defb	83
	defb	170
	defb	20
	defb	40
	defb	63
	defb	63
	defb	63
	defb	94
	defb	253
	defb	116
	defb	106
	defb	245
	defb	84
	defb	232
	defb	244
	defb	104
	defb	177
	defb	40
	defb	81
	defb	168
	defb	0
	defb	99
	defb	4
	defb	127
	defb	85
	defb	63
	defb	21
	defb	0
	defb	0
	defb	255
	defb	0
	defb	255
	defb	85
	defb	251
	defb	223
	defb	0
	defb	0
	defb	251
	defb	0
	defb	255
	defb	85
	defb	255
	defb	253
	defb	0
	defb	0
	defb	175
	defb	84
	defb	255
	defb	247
	defb	255
	defb	253
	defb	0
	defb	0
	defb	227
	defb	4
	defb	255
	defb	85
	defb	191
	defb	21
	defb	0
	defb	0
	defb	254
	defb	0
	defb	254
	defb	84
	defb	250
	defb	220
	defb	0
	defb	0
	defb	122
	defb	127
	defb	126
	defb	36
	defb	87
	defb	63
	defb	95
	defb	0
	defb	175
	defb	127
	defb	127
	defb	136
	defb	255
	defb	255
	defb	255
	defb	61
	defb	127
	defb	63
	defb	93
	defb	63
	defb	87
	defb	31
	defb	93
	defb	255
	defb	127
	defb	255
	defb	221
	defb	255
	defb	117
	defb	93
	defb	221
	defb	0
	defb	255
	defb	255
	defb	255
	defb	26
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	223
	defb	255
	defb	125
	defb	95
	defb	87
	defb	221
	defb	0
	defb	254
	defb	126
	defb	126
	defb	80
	defb	234
	defb	252
	defb	250
	defb	124
	defb	254
	defb	252
	defb	118
	defb	252
	defb	214
	defb	244
	defb	118
	defb	21
	defb	87
	defb	29
	defb	87
	defb	31
	defb	87
	defb	29
	defb	119
	defb	221
	defb	247
	defb	119
	defb	213
	defb	247
	defb	95
	defb	223
	defb	87
	defb	55
	defb	87
	defb	61
	defb	87
	defb	63
	defb	117
	defb	21
	defb	93
	defb	95
	defb	221
	defb	245
	defb	117
	defb	215
	defb	119
	defb	95
	defb	221
	defb	85
	defb	93
	defb	119
	defb	95
	defb	127
	defb	93
	defb	119
	defb	223
	defb	223
	defb	95
	defb	247
	defb	95
	defb	255
	defb	213
	defb	87
	defb	117
	defb	252
	defb	82
	defb	212
	defb	242
	defb	116
	defb	94
	defb	252
	defb	246
	defb	92
	defb	218
	defb	116
	defb	254
	defb	116
	defb	90
	defb	212
	defb	210
	defb	92
	defb	83
	defb	76
	defb	80
	defb	208
	defb	160
	defb	32
	defb	32
	defb	29
	defb	199
	defb	55
	defb	9
	defb	11
	defb	5
	defb	5
	defb	5
	defb	160
	defb	208
	defb	208
	defb	108
	defb	83
	defb	192
	defb	85
	defb	231
	defb	5
	defb	9
	defb	9
	defb	49
	defb	199
	defb	35
	defb	87
	defb	205
	defb	0
	defb	126
	defb	127
	defb	127
	defb	10
	defb	127
	defb	127
	defb	127
	defb	0
	defb	174
	defb	126
	defb	126
	defb	136
	defb	254
	defb	254
	defb	254
	defb	127
	defb	127
	defb	63
	defb	93
	defb	10
	defb	85
	defb	42
	defb	4
	defb	254
	defb	124
	defb	254
	defb	92
	defb	190
	defb	84
	defb	40
	defb	16
	defb	239
	defb	215
	defb	239
	defb	255
	defb	255
	defb	159
	defb	111
	defb	111
	defb	255
	defb	255
	defb	253
	defb	255
	defb	239
	defb	215
	defb	239
	defb	255
	defb	159
	defb	255
	defb	85
	defb	251
	defb	85
	defb	138
	defb	85
	defb	170
	defb	255
	defb	255
	defb	85
	defb	239
	defb	85
	defb	168
	defb	82
	defb	168
	defb	235
	defb	247
	defb	255
	defb	231
	defb	219
	defb	219
	defb	231
	defb	255
	defb	255
	defb	255
	defb	255
	defb	221
	defb	175
	defb	223
	defb	255
	defb	255
	defb	255
	defb	255
	defb	170
	defb	247
	defb	170
	defb	21
	defb	74
	defb	21
	defb	255
	defb	255
	defb	170
	defb	223
	defb	170
	defb	81
	defb	170
	defb	85
	defb	0
	defb	8
	defb	24
	defb	60
	defb	10
	defb	8
	defb	25
	defb	8
	defb	0
	defb	8
	defb	12
	defb	134
	defb	143
	defb	196
	defb	228
	defb	140
	defb	16
	defb	16
	defb	24
	defb	17
	defb	16
	defb	32
	defb	32
	defb	32
	defb	134
	defb	196
	defb	132
	defb	130
	defb	134
	defb	194
	defb	130
	defb	130
	defb	0
	defb	60
	defb	126
	defb	102
	defb	102
	defb	126
	defb	60
	defb	0
	defb	24
	defb	0
	defb	251
	defb	243
	defb	224
	defb	243
	defb	186
	defb	0
	defb	24
	defb	0
	defb	255
	defb	255
	defb	15
	defb	255
	defb	171
	defb	0
	defb	24
	defb	0
	defb	255
	defb	255
	defb	240
	defb	255
	defb	186
	defb	0
	defb	24
	defb	0
	defb	223
	defb	207
	defb	7
	defb	207
	defb	218
	defb	0
	defb	0
	defb	125
	defb	127
	defb	125
	defb	127
	defb	125
	defb	127
	defb	125
	defb	0
	defb	223
	defb	254
	defb	223
	defb	254
	defb	223
	defb	254
	defb	95
	defb	127
	defb	127
	defb	127
	defb	127
	defb	127
	defb	47
	defb	85
	defb	0
	defb	254
	defb	119
	defb	99
	defb	65
	defb	119
	defb	118
	defb	93
	defb	0
	defb	0
	defb	0
	defb	0
	defb	7
	defb	127
	defb	7
	defb	0
	defb	0
	defb	0
	defb	2
	defb	62
	defb	254
	defb	250
	defb	86
	defb	42
	defb	2
	defb	0
	defb	64
	defb	124
	defb	127
	defb	95
	defb	106
	defb	84
	defb	64
	defb	0
	defb	0
	defb	0
	defb	224
	defb	254
	defb	224
	defb	0
	defb	0
	defb	95
	defb	15
	defb	2
	defb	7
	defb	62
	defb	127
	defb	227
	defb	248
	defb	168
	defb	64
	defb	128
	defb	64
	defb	168
	defb	244
	defb	250
	defb	156
	defb	252
	defb	252
	defb	92
	defb	105
	defb	50
	defb	31
	defb	14
	defb	5
	defb	58
	defb	244
	defb	168
	defb	84
	defb	168
	defb	80
	defb	160
	defb	64
	defb	0
	defb	0
	defb	0
	defb	128
	defb	95
	defb	160
	defb	192
	defb	224
	defb	0
	defb	8
	defb	0
	defb	40
	defb	208
	defb	128
	defb	0
	defb	128
	defb	193
	defb	226
	defb	215
	defb	170
	defb	64
	defb	128
	defb	0
	defb	0
	defb	0
	defb	128
	defb	80
	defb	168
	defb	0
	defb	8
	defb	0
	defb	8
	defb	223
	defb	170
	defb	192
	defb	128
	defb	128
	defb	128
	defb	128
	defb	128
	defb	80
	defb	128
	defb	64
	defb	0
	defb	64
	defb	0
	defb	64
	defb	0
	defb	128
	defb	192
	defb	255
	defb	170
	defb	0
	defb	0
	defb	0
	defb	0
	defb	64
	defb	128
	defb	208
	defb	168
	defb	16
	defb	8
	defb	0
	defb	8
	defb	0
	defb	126
	defb	124
	defb	104
	defb	116
	defb	104
	defb	64
	defb	0
	defb	0
	defb	0
	defb	15
	defb	63
	defb	127
	defb	0
	defb	127
	defb	0
	defb	0
	defb	0
	defb	80
	defb	236
	defb	214
	defb	0
	defb	170
	defb	0
	defb	43
	defb	70
	defb	43
	defb	0
	defb	127
	defb	127
	defb	63
	defb	0
	defb	212
	defb	254
	defb	188
	defb	0
	defb	254
	defb	234
	defb	84
	defb	0
	defb	0
	defb	0
	defb	15
	defb	24
	defb	33
	defb	106
	defb	68
	defb	73
	defb	0
	defb	0
	defb	240
	defb	24
	defb	68
	defb	166
	defb	18
	defb	170
	defb	84
	defb	74
	defb	68
	defb	106
	defb	33
	defb	24
	defb	15
	defb	0
	defb	146
	defb	170
	defb	146
	defb	38
	defb	68
	defb	24
	defb	240
	defb	0
	defb	0
	defb	10
	defb	21
	defb	62
	defb	63
	defb	63
	defb	63
	defb	63
	defb	0
	defb	42
	defb	85
	defb	191
	defb	127
	defb	255
	defb	255
	defb	255
	defb	63
	defb	63
	defb	63
	defb	31
	defb	0
	defb	21
	defb	0
	defb	0
	defb	255
	defb	255
	defb	255
	defb	255
	defb	0
	defb	85
	defb	0
	defb	0
	defb	0
	defb	168
	defb	20
	defb	168
	defb	212
	defb	224
	defb	84
	defb	232
	defb	84
	defb	224
	defb	212
	defb	168
	defb	0
	defb	64
	defb	0
	defb	0
	defb	26
	defb	29
	defb	0
	defb	13
	defb	0
	defb	0
	defb	0
	defb	0
	defb	255
	defb	255
	defb	0
	defb	221
	defb	0
	defb	0
	defb	5
	defb	40
	defb	69
	defb	170
	defb	87
	defb	191
	defb	95
	defb	191
	defb	95
	defb	175
	defb	234
	defb	255
	defb	0
	defb	85
	defb	0
	defb	0
	defb	64
	defb	168
	defb	168
	defb	80
	defb	0
	defb	80
	defb	0
	defb	0
	defb	0
	defb	0
	defb	20
	defb	162
	defb	245
	defb	232
	defb	245
	defb	234
	defb	253
	defb	250
	defb	95
	defb	191
	defb	95
	defb	191
	defb	95
	defb	191
	defb	95
	defb	191
	defb	253
	defb	250
	defb	253
	defb	248
	defb	253
	defb	250
	defb	245
	defb	250
	defb	68
	defb	0
	defb	1
	defb	0
	defb	1
	defb	0
	defb	1
	defb	0
	defb	81
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	95
	defb	191
	defb	95
	defb	0
	defb	95
	defb	191
	defb	95
	defb	0
	defb	253
	defb	250
	defb	253
	defb	0
	defb	245
	defb	226
	defb	245
	defb	0
	defb	3
	defb	3
	defb	0
	defb	3
	defb	0
	defb	10
	defb	21
	defb	62
	defb	255
	defb	255
	defb	0
	defb	255
	defb	0
	defb	42
	defb	85
	defb	191
	defb	63
	defb	63
	defb	63
	defb	31
	defb	47
	defb	21
	defb	0
	defb	23
	defb	127
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	0
	defb	255
	defb	245
	defb	234
	defb	0
	defb	245
	defb	0
	defb	168
	defb	85
	defb	190
	defb	64
	defb	128
	defb	0
	defb	64
	defb	0
	defb	168
	defb	20
	defb	168
	defb	212
	defb	224
	defb	84
	defb	232
	defb	84
	defb	224
	defb	0
	defb	168
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	255
	defb	254
	defb	254
	defb	202
	defb	202
	defb	0
	defb	255
	defb	255
	defb	127
	defb	31
	defb	31
	defb	31
	defb	31
	defb	7
	defb	7
	defb	7
	defb	1
	defb	0
	defb	4
	defb	6
	defb	0
	defb	0
	defb	255
	defb	254
	defb	254
	defb	254
	defb	248
	defb	248
	defb	248
	defb	254
	defb	255
	defb	79
	defb	79
	defb	79
	defb	0
	defb	0
	defb	0
	defb	0
	defb	248
	defb	248
	defb	248
	defb	248
	defb	120
	defb	56
	defb	0
	defb	0
	defb	255
	defb	255
	defb	255
	defb	255
	defb	7
	defb	7
	defb	7
	defb	31
	defb	192
	defb	128
	defb	0
	defb	0
	defb	0
	defb	49
	defb	123
	defb	123
	defb	7
	defb	7
	defb	7
	defb	7
	defb	0
	defb	6
	defb	0
	defb	0
	defb	123
	defb	123
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	3
	defb	1
	defb	0
	defb	0
	defb	0
	defb	140
	defb	222
	defb	222
	defb	222
	defb	222
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	241
	defb	241
	defb	241
	defb	241
	defb	0
	defb	197
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	85
	defb	0
	defb	85
	defb	170
	defb	85
	defb	170
	defb	255
	defb	170
	defb	255
	defb	255
	defb	255
	defb	255
	defb	14
	defb	4
	defb	4
	defb	0
	defb	94
	defb	32
	defb	32
	defb	0
	defb	33
	defb	22
	defb	8
	defb	16
	defb	160
	defb	32
	defb	64
	defb	128
	defb	0
	defb	0
	defb	16
	defb	0
	defb	8
	defb	7
	defb	56
	defb	192
	defb	4
	defb	0
	defb	4
	defb	4
	defb	127
	defb	128
	defb	0
	defb	0
	defb	32
	defb	0
	defb	32
	defb	32
	defb	254
	defb	1
	defb	0
	defb	0
	defb	0
	defb	0
	defb	8
	defb	0
	defb	16
	defb	224
	defb	28
	defb	3
	defb	132
	defb	104
	defb	16
	defb	8
	defb	5
	defb	4
	defb	2
	defb	1
	defb	1
	defb	2
	defb	2
	defb	4
	defb	184
	defb	8
	defb	16
	defb	16
	defb	32
	defb	160
	defb	64
	defb	64
	defb	64
	defb	128
	defb	128
	defb	128
	defb	128
	defb	64
	defb	64
	defb	32
	defb	29
	defb	16
	defb	8
	defb	8
	defb	4
	defb	5
	defb	2
	defb	2
	defb	2
	defb	1
	defb	1
	defb	1
	defb	1
	defb	1
	defb	3
	defb	1
	defb	1
	defb	23
	defb	1
	defb	1
	defb	128
	defb	128
	defb	192
	defb	128
	defb	128
	defb	232
	defb	128
	defb	128
	defb	0
	defb	28
	defb	54
	defb	118
	defb	108
	defb	56
	defb	0
	defb	0
	defb	0
	defb	12
	defb	28
	defb	12
	defb	24
	defb	24
	defb	0
	defb	0
	defb	0
	defb	30
	defb	6
	defb	60
	defb	96
	defb	124
	defb	0
	defb	0
	defb	0
	defb	56
	defb	28
	defb	60
	defb	28
	defb	120
	defb	0
	defb	0
	defb	0
	defb	19
	defb	55
	defb	62
	defb	12
	defb	24
	defb	0
	defb	0
	defb	0
	defb	30
	defb	48
	defb	60
	defb	28
	defb	120
	defb	0
	defb	0
	defb	0
	defb	28
	defb	48
	defb	60
	defb	108
	defb	56
	defb	0
	defb	0
	defb	0
	defb	60
	defb	12
	defb	24
	defb	24
	defb	48
	defb	0
	defb	0
	defb	0
	defb	28
	defb	52
	defb	24
	defb	44
	defb	56
	defb	0
	defb	0
	defb	0
	defb	28
	defb	54
	defb	62
	defb	12
	defb	12
	defb	0
	defb	0
	SECTION	code_compiler
	C_LINE	52,"ss.c::menu::0::44"
	C_LINE	0,"spriteset.h::menu::0::44"
	C_LINE	6,"spriteset.h::menu::0::44"
	C_LINE	7,"spriteset.h::menu::0::44"
	C_LINE	8,"spriteset.h::menu::0::44"
	C_LINE	9,"spriteset.h::menu::0::44"
	C_LINE	10,"spriteset.h::menu::0::44"
	C_LINE	11,"spriteset.h::menu::0::44"
	C_LINE	12,"spriteset.h::menu::0::44"
	C_LINE	13,"spriteset.h::menu::0::44"
	C_LINE	14,"spriteset.h::menu::0::44"
	C_LINE	15,"spriteset.h::menu::0::44"
	C_LINE	16,"spriteset.h::menu::0::44"
	C_LINE	17,"spriteset.h::menu::0::44"
	C_LINE	18,"spriteset.h::menu::0::44"
	C_LINE	19,"spriteset.h::menu::0::44"
	C_LINE	20,"spriteset.h::menu::0::44"
	C_LINE	21,"spriteset.h::menu::0::44"
	C_LINE	22,"spriteset.h::menu::0::44"
	C_LINE	23,"spriteset.h::menu::0::44"
	C_LINE	24,"spriteset.h::menu::0::44"
	C_LINE	25,"spriteset.h::menu::0::44"
	C_LINE	26,"spriteset.h::menu::0::44"
	C_LINE	27,"spriteset.h::menu::0::44"
	C_LINE	28,"spriteset.h::menu::0::44"
	C_LINE	29,"spriteset.h::menu::0::44"
	C_LINE	30,"spriteset.h::menu::0::44"
	C_LINE	31,"spriteset.h::menu::0::44"
	C_LINE	32,"spriteset.h::menu::0::44"
	C_LINE	33,"spriteset.h::menu::0::44"
	C_LINE	34,"spriteset.h::menu::0::44"
	C_LINE	35,"spriteset.h::menu::0::44"
	C_LINE	36,"spriteset.h::menu::0::44"
	C_LINE	37,"spriteset.h::menu::0::44"
	C_LINE	38,"spriteset.h::menu::0::44"
	C_LINE	39,"spriteset.h::menu::0::44"
	C_LINE	40,"spriteset.h::menu::0::44"
	C_LINE	41,"spriteset.h::menu::0::44"
	C_LINE	42,"spriteset.h::menu::0::44"
	C_LINE	43,"spriteset.h::menu::0::44"
	C_LINE	44,"spriteset.h::menu::0::44"
	C_LINE	45,"spriteset.h::menu::0::44"
	C_LINE	46,"spriteset.h::menu::0::44"
	C_LINE	47,"spriteset.h::menu::0::44"
	C_LINE	48,"spriteset.h::menu::0::44"
	C_LINE	49,"spriteset.h::menu::0::44"
	C_LINE	50,"spriteset.h::menu::0::44"
	C_LINE	51,"spriteset.h::menu::0::44"
	C_LINE	52,"spriteset.h::menu::0::44"
	C_LINE	53,"spriteset.h::menu::0::44"
	C_LINE	55,"spriteset.h::menu::0::44"
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
; Sprite #0 y máscara
; Primera columna
    ._sprite_1_a
        defb 0x07, 0xF0
        defb 0x0F, 0xE0
        defb 0x0F, 0xC0
        defb 0x15, 0x80
        defb 0x2A, 0x00
        defb 0x55, 0x00
        defb 0x2A, 0x00
        defb 0x20, 0x80
        defb 0x3E, 0x80
        defb 0x3F, 0x80
        defb 0x1F, 0xC0
        defb 0x0F, 0xE0
        defb 0x02, 0xF0
        defb 0x05, 0xE0
        defb 0x0A, 0xC0
        defb 0x15, 0xC0
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_1_b
        defb 0x00, 0x7F
        defb 0x80, 0x0F
        defb 0xB0, 0x07
        defb 0x58, 0x03
        defb 0xB8, 0x03
        defb 0x50, 0x03
        defb 0x0C, 0x01
        defb 0xDC, 0x01
        defb 0x30, 0x03
        defb 0xF0, 0x07
        defb 0x80, 0x0F
        defb 0xC0, 0x1F
        defb 0x00, 0x0F
        defb 0x70, 0x07
        defb 0xB8, 0x03
        defb 0x50, 0x07
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #1 y máscara
; Primera columna
    ._sprite_2_a
        defb 0x0E, 0xE0
        defb 0x1F, 0xC0
        defb 0x1E, 0x80
        defb 0x55, 0x00
        defb 0xAA, 0x00
        defb 0x55, 0x00
        defb 0xA8, 0x00
        defb 0x41, 0x00
        defb 0x7C, 0x00
        defb 0x7F, 0x00
        defb 0x3E, 0x80
        defb 0x1F, 0x80
        defb 0x02, 0x00
        defb 0x51, 0x00
        defb 0x22, 0x00
        defb 0x15, 0x80
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_2_b
        defb 0x00, 0xFF
        defb 0x00, 0x1F
        defb 0xE0, 0x0F
        defb 0x70, 0x07
        defb 0xB0, 0x07
        defb 0x60, 0x03
        defb 0x1C, 0x01
        defb 0xBC, 0x01
        defb 0x20, 0x03
        defb 0xE0, 0x0F
        defb 0x00, 0x1F
        defb 0x80, 0x03
        defb 0x38, 0x01
        defb 0x5C, 0x01
        defb 0xA8, 0x03
        defb 0x40, 0x07
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #2 y máscara
; Primera columna
    ._sprite_3_a
        defb 0x03, 0xF8
        defb 0x07, 0xF0
        defb 0x07, 0xE0
        defb 0x15, 0xC0
        defb 0x2A, 0x80
        defb 0x15, 0x80
        defb 0x2A, 0x80
        defb 0x10, 0xC0
        defb 0x1F, 0xC0
        defb 0x1F, 0xC0
        defb 0x0F, 0xE0
        defb 0x07, 0x80
        defb 0x22, 0x00
        defb 0x55, 0x00
        defb 0x2A, 0x00
        defb 0x05, 0x80
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_3_b
        defb 0x80, 0x3F
        defb 0xC0, 0x07
        defb 0xB8, 0x03
        defb 0x5C, 0x01
        defb 0xAC, 0x01
        defb 0x58, 0x00
        defb 0x07, 0x00
        defb 0x6F, 0x00
        defb 0x18, 0x00
        defb 0xF8, 0x03
        defb 0x80, 0x07
        defb 0xE0, 0x08
        defb 0x02, 0x00
        defb 0x61, 0x00
        defb 0xB2, 0x00
        defb 0x50, 0x00
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #3 y máscara
; Primera columna
    ._sprite_4_a
        defb 0x07, 0xF0
        defb 0x0F, 0xC0
        defb 0x2A, 0x80
        defb 0x55, 0x00
        defb 0x2A, 0x00
        defb 0x54, 0x00
        defb 0x20, 0x80
        defb 0x3E, 0x80
        defb 0x3F, 0x80
        defb 0x1F, 0xC0
        defb 0x0F, 0xC0
        defb 0x11, 0x80
        defb 0x2A, 0x00
        defb 0x15, 0x80
        defb 0x02, 0xC0
        defb 0x01, 0xF8
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_4_b
        defb 0x80, 0x0F
        defb 0x70, 0x07
        defb 0xB8, 0x03
        defb 0x58, 0x03
        defb 0xB0, 0x01
        defb 0x0E, 0x00
        defb 0xDE, 0x00
        defb 0x30, 0x01
        defb 0xF0, 0x07
        defb 0x80, 0x0F
        defb 0xC0, 0x1F
        defb 0x00, 0x7F
        defb 0x00, 0x3F
        defb 0x40, 0x1F
        defb 0xE0, 0x0F
        defb 0x40, 0x1F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #4 y máscara
; Primera columna
    ._sprite_5_a
        defb 0x00, 0xFE
        defb 0x01, 0xF0
        defb 0x0D, 0xE0
        defb 0x1A, 0xC0
        defb 0x1D, 0xC0
        defb 0x0A, 0xC0
        defb 0x30, 0x80
        defb 0x3B, 0x80
        defb 0x0C, 0xC0
        defb 0x0F, 0xE0
        defb 0x01, 0xF0
        defb 0x03, 0xF8
        defb 0x00, 0xF0
        defb 0x0E, 0xE0
        defb 0x1D, 0xC0
        defb 0x0A, 0xE0
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_5_b
        defb 0xE0, 0x0F
        defb 0xF0, 0x07
        defb 0xF0, 0x03
        defb 0xA8, 0x01
        defb 0x54, 0x00
        defb 0xAA, 0x00
        defb 0x54, 0x00
        defb 0x04, 0x01
        defb 0x7C, 0x01
        defb 0xFC, 0x01
        defb 0xF8, 0x03
        defb 0xF0, 0x07
        defb 0x40, 0x0F
        defb 0xA0, 0x07
        defb 0x50, 0x03
        defb 0xA8, 0x03
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #5 y máscara
; Primera columna
    ._sprite_6_a
        defb 0x00, 0xFF
        defb 0x00, 0xF8
        defb 0x07, 0xF0
        defb 0x0E, 0xE0
        defb 0x0D, 0xE0
        defb 0x06, 0xC0
        defb 0x38, 0x80
        defb 0x3D, 0x80
        defb 0x04, 0xC0
        defb 0x07, 0xF0
        defb 0x00, 0xF8
        defb 0x01, 0xC0
        defb 0x1C, 0x80
        defb 0x3A, 0x80
        defb 0x15, 0xC0
        defb 0x02, 0xE0
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_6_b
        defb 0x70, 0x07
        defb 0xF8, 0x03
        defb 0x78, 0x01
        defb 0xAA, 0x00
        defb 0x55, 0x00
        defb 0xAA, 0x00
        defb 0x15, 0x00
        defb 0x82, 0x00
        defb 0x3E, 0x00
        defb 0xFE, 0x00
        defb 0x7C, 0x01
        defb 0xF8, 0x01
        defb 0x40, 0x00
        defb 0x8A, 0x00
        defb 0x44, 0x00
        defb 0xA8, 0x01
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #6 y máscara
; Primera columna
    ._sprite_7_a
        defb 0x01, 0xFC
        defb 0x03, 0xE0
        defb 0x1D, 0xC0
        defb 0x3A, 0x80
        defb 0x35, 0x80
        defb 0x1A, 0x00
        defb 0xE0, 0x00
        defb 0xF6, 0x00
        defb 0x18, 0x00
        defb 0x1F, 0xC0
        defb 0x01, 0xE0
        defb 0x07, 0x10
        defb 0x40, 0x00
        defb 0x86, 0x00
        defb 0x4D, 0x00
        defb 0x0A, 0x00
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_7_b
        defb 0xC0, 0x1F
        defb 0xE0, 0x0F
        defb 0xE0, 0x07
        defb 0xA8, 0x03
        defb 0x54, 0x01
        defb 0xA8, 0x01
        defb 0x54, 0x01
        defb 0x08, 0x03
        defb 0xF8, 0x03
        defb 0xF8, 0x03
        defb 0xF0, 0x07
        defb 0xE0, 0x01
        defb 0x44, 0x00
        defb 0xAA, 0x00
        defb 0x54, 0x00
        defb 0xA0, 0x01
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #7 y máscara
; Primera columna
    ._sprite_8_a
        defb 0x01, 0xF0
        defb 0x0E, 0xE0
        defb 0x1D, 0xC0
        defb 0x1A, 0xC0
        defb 0x0D, 0x80
        defb 0x70, 0x00
        defb 0x7B, 0x00
        defb 0x0C, 0x80
        defb 0x0F, 0xE0
        defb 0x01, 0xF0
        defb 0x03, 0xF8
        defb 0x00, 0xFE
        defb 0x00, 0xFC
        defb 0x02, 0xF8
        defb 0x07, 0xF0
        defb 0x02, 0xF8
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_8_b
        defb 0xE0, 0x0F
        defb 0xF0, 0x03
        defb 0x54, 0x01
        defb 0xAA, 0x00
        defb 0x54, 0x00
        defb 0x2A, 0x00
        defb 0x04, 0x01
        defb 0x7C, 0x01
        defb 0xFC, 0x01
        defb 0xF8, 0x03
        defb 0xF0, 0x03
        defb 0x88, 0x01
        defb 0x54, 0x00
        defb 0xA8, 0x01
        defb 0x40, 0x03
        defb 0x80, 0x1F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #8 y máscara
; Primera columna
    ._sprite_9_a
        defb 0x00, 0xF0
        defb 0x07, 0xE0
        defb 0x0F, 0xC0
        defb 0x0F, 0xC0
        defb 0x0F, 0xC0
        defb 0x03, 0xE0
        defb 0x01, 0xF0
        defb 0x01, 0xC0
        defb 0x0E, 0x80
        defb 0x38, 0x00
        defb 0x22, 0x00
        defb 0x04, 0x80
        defb 0x0A, 0xC0
        defb 0x10, 0x80
        defb 0x20, 0x83
        defb 0x00, 0x87
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_9_b
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xF8, 0x01
        defb 0x10, 0x01
        defb 0x90, 0x01
        defb 0xF8, 0x01
        defb 0xF8, 0x01
        defb 0xD0, 0x03
        defb 0x08, 0x01
        defb 0x0C, 0x00
        defb 0xA2, 0x00
        defb 0x10, 0x00
        defb 0x08, 0x01
        defb 0x00, 0xC1
        defb 0x08, 0xC1
        defb 0x00, 0xC0
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #9 y máscara
; Primera columna
    ._sprite_10_a
        defb 0x00, 0xFF
        defb 0x00, 0xF0
        defb 0x07, 0xE0
        defb 0x0F, 0xC0
        defb 0x0F, 0xC0
        defb 0x0F, 0xC0
        defb 0x03, 0xE0
        defb 0x01, 0xE0
        defb 0x0D, 0x80
        defb 0x38, 0x00
        defb 0x22, 0x00
        defb 0x05, 0x80
        defb 0x00, 0xF0
        defb 0x00, 0xF8
        defb 0x01, 0xF8
        defb 0x00, 0xF8
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_10_b
        defb 0x00, 0xFF
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xF8, 0x01
        defb 0x10, 0x01
        defb 0x90, 0x01
        defb 0xF8, 0x01
        defb 0xF8, 0x01
        defb 0xD0, 0x01
        defb 0x0C, 0x00
        defb 0xA2, 0x00
        defb 0x00, 0x00
        defb 0x80, 0x0F
        defb 0x40, 0x0F
        defb 0x00, 0x07
        defb 0x00, 0x7F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #10 y máscara
; Primera columna
    ._sprite_11_a
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x1F, 0x80
        defb 0x08, 0x80
        defb 0x09, 0x80
        defb 0x1F, 0x80
        defb 0x1F, 0x80
        defb 0x0B, 0xC0
        defb 0x10, 0x80
        defb 0x30, 0x00
        defb 0x45, 0x00
        defb 0x08, 0x00
        defb 0x10, 0x80
        defb 0x00, 0x83
        defb 0x10, 0x83
        defb 0x00, 0x03
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_11_b
        defb 0x00, 0x0F
        defb 0xE0, 0x07
        defb 0xF0, 0x03
        defb 0xF0, 0x03
        defb 0xF0, 0x03
        defb 0xC0, 0x07
        defb 0x80, 0x0F
        defb 0x80, 0x03
        defb 0x70, 0x01
        defb 0x1C, 0x00
        defb 0x44, 0x00
        defb 0x20, 0x01
        defb 0x50, 0x03
        defb 0x08, 0x01
        defb 0x04, 0xC1
        defb 0x00, 0xE1
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #11 y máscara
; Primera columna
    ._sprite_12_a
        defb 0x00, 0xFF
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x1F, 0x80
        defb 0x08, 0x80
        defb 0x09, 0x80
        defb 0x1F, 0x80
        defb 0x1F, 0x80
        defb 0x0B, 0x80
        defb 0x30, 0x00
        defb 0x45, 0x00
        defb 0x00, 0x00
        defb 0x01, 0xF0
        defb 0x02, 0xF0
        defb 0x00, 0xE0
        defb 0x00, 0xFE
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_12_b
        defb 0x00, 0xFF
        defb 0x00, 0x0F
        defb 0xE0, 0x07
        defb 0xF0, 0x03
        defb 0xF0, 0x03
        defb 0xF0, 0x03
        defb 0xC0, 0x07
        defb 0x80, 0x07
        defb 0xB0, 0x01
        defb 0x1C, 0x00
        defb 0x44, 0x00
        defb 0xA0, 0x01
        defb 0x00, 0x0F
        defb 0x00, 0x1F
        defb 0x80, 0x1F
        defb 0x00, 0x1F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #12 y máscara
; Primera columna
    ._sprite_13_a
        defb 0x00, 0xFF
        defb 0x00, 0xFE
        defb 0x00, 0xFC
        defb 0x01, 0xF8
        defb 0x00, 0xF8
        defb 0x01, 0xF0
        defb 0x00, 0xF0
        defb 0x05, 0xE0
        defb 0x0A, 0xC0
        defb 0x04, 0xC0
        defb 0x08, 0xC0
        defb 0x04, 0xC0
        defb 0x08, 0xC0
        defb 0x10, 0x00
        defb 0x20, 0x00
        defb 0x00, 0x04
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_13_b
        defb 0x00, 0xFF
        defb 0x00, 0x03
        defb 0xFC, 0x01
        defb 0x48, 0x01
        defb 0xD8, 0x01
        defb 0xFC, 0x01
        defb 0xC0, 0x00
        defb 0xFE, 0x00
        defb 0xFE, 0x00
        defb 0xFE, 0x00
        defb 0xFE, 0x00
        defb 0x7C, 0x00
        defb 0x80, 0x00
        defb 0x10, 0x01
        defb 0xA8, 0x01
        defb 0x50, 0x01
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #13 y máscara
; Primera columna
    ._sprite_14_a
        defb 0x00, 0xFF
        defb 0x00, 0xF0
        defb 0x03, 0xE0
        defb 0x06, 0xC0
        defb 0x0A, 0xC0
        defb 0x17, 0x80
        defb 0x0E, 0x80
        defb 0x17, 0x00
        defb 0x2F, 0x00
        defb 0x57, 0x00
        defb 0x23, 0x00
        defb 0x11, 0x00
        defb 0x22, 0x00
        defb 0x10, 0x00
        defb 0x20, 0x00
        defb 0x00, 0x06
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_14_b
        defb 0x00, 0xFF
        defb 0x00, 0x1F
        defb 0xE0, 0x0F
        defb 0x40, 0x0F
        defb 0xC0, 0x0F
        defb 0xE0, 0x0F
        defb 0x00, 0x0F
        defb 0xF0, 0x07
        defb 0xF0, 0x07
        defb 0xF0, 0x07
        defb 0xF0, 0x07
        defb 0xE0, 0x07
        defb 0x00, 0x03
        defb 0x00, 0x01
        defb 0xA0, 0x00
        defb 0x54, 0x00
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #14 y máscara
; Primera columna
    ._sprite_15_a
        defb 0x00, 0xFF
        defb 0x00, 0xC0
        defb 0x3F, 0x80
        defb 0x12, 0x80
        defb 0x1B, 0x80
        defb 0x3F, 0x80
        defb 0x03, 0x00
        defb 0x7F, 0x00
        defb 0x7F, 0x00
        defb 0x7F, 0x00
        defb 0x7F, 0x00
        defb 0x3E, 0x00
        defb 0x01, 0x00
        defb 0x08, 0x80
        defb 0x15, 0x80
        defb 0x0A, 0x80
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_15_b
        defb 0x00, 0xFF
        defb 0x00, 0x7F
        defb 0x00, 0x3F
        defb 0x80, 0x1F
        defb 0x00, 0x1F
        defb 0x80, 0x0F
        defb 0x00, 0x0F
        defb 0xA0, 0x07
        defb 0x50, 0x03
        defb 0x20, 0x03
        defb 0x10, 0x03
        defb 0x20, 0x03
        defb 0x10, 0x03
        defb 0x08, 0x00
        defb 0x04, 0x00
        defb 0x00, 0x20
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #15 y máscara
; Primera columna
    ._sprite_16_a
        defb 0x00, 0xFF
        defb 0x00, 0xF8
        defb 0x07, 0xF0
        defb 0x02, 0xF0
        defb 0x03, 0xF0
        defb 0x07, 0xF0
        defb 0x00, 0xF0
        defb 0x0F, 0xE0
        defb 0x0F, 0xE0
        defb 0x0F, 0xE0
        defb 0x0F, 0xE0
        defb 0x07, 0xE0
        defb 0x00, 0xC0
        defb 0x00, 0x80
        defb 0x05, 0x00
        defb 0x2A, 0x00
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_16_b
        defb 0x00, 0xFF
        defb 0x00, 0x0F
        defb 0xC0, 0x07
        defb 0x60, 0x03
        defb 0x50, 0x03
        defb 0xE8, 0x01
        defb 0x70, 0x01
        defb 0xE8, 0x00
        defb 0xF4, 0x00
        defb 0xEA, 0x00
        defb 0xC4, 0x00
        defb 0x88, 0x00
        defb 0x44, 0x00
        defb 0x08, 0x00
        defb 0x04, 0x00
        defb 0x00, 0x60
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #16 y máscara
; Primera columna
    ._sprite_17_a
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x1F, 0x80
        defb 0x00, 0x80
        defb 0x3F, 0x00
        defb 0x27, 0x00
        defb 0x0B, 0x80
        defb 0x15, 0x80
        defb 0x0A, 0xC0
        defb 0x0D, 0xC0
        defb 0x1F, 0x80
        defb 0x1F, 0x80
        defb 0x00, 0xC0
        defb 0x08, 0x81
        defb 0x10, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_17_b
        defb 0x00, 0x1F
        defb 0xC0, 0x0F
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xF0, 0x03
        defb 0x40, 0x07
        defb 0x80, 0x0F
        defb 0xE0, 0x07
        defb 0x00, 0x03
        defb 0x08, 0x81
        defb 0x10, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #17 y máscara
; Primera columna
    ._sprite_18_a
        defb 0x00, 0xFF
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x1F, 0x80
        defb 0x00, 0x80
        defb 0x3F, 0x00
        defb 0x27, 0x00
        defb 0x0B, 0x80
        defb 0x15, 0x80
        defb 0x0A, 0xC0
        defb 0x0D, 0xC0
        defb 0x1F, 0x80
        defb 0x05, 0x80
        defb 0x18, 0x80
        defb 0x00, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_18_b
        defb 0x00, 0xFF
        defb 0x00, 0x1F
        defb 0xC0, 0x0F
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xA8, 0x03
        defb 0xF0, 0x03
        defb 0x40, 0x07
        defb 0x80, 0x0F
        defb 0x40, 0x03
        defb 0x00, 0x01
        defb 0x18, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #18 y máscara
; Primera columna
    ._sprite_19_a
        defb 0x00, 0xF8
        defb 0x03, 0xF0
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x0F, 0xC0
        defb 0x02, 0xE0
        defb 0x01, 0xF0
        defb 0x07, 0xE0
        defb 0x00, 0xC0
        defb 0x10, 0x81
        defb 0x08, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_19_b
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xF8, 0x01
        defb 0x00, 0x01
        defb 0xFC, 0x00
        defb 0xE4, 0x00
        defb 0xD0, 0x01
        defb 0xA8, 0x01
        defb 0x50, 0x03
        defb 0xB0, 0x03
        defb 0xF8, 0x01
        defb 0xF8, 0x01
        defb 0x00, 0x03
        defb 0x10, 0x81
        defb 0x08, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #19 y máscara
; Primera columna
    ._sprite_20_a
        defb 0x00, 0xFF
        defb 0x00, 0xF8
        defb 0x03, 0xF0
        defb 0x00, 0xE0
        defb 0x0F, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x15, 0xC0
        defb 0x0F, 0xC0
        defb 0x02, 0xE0
        defb 0x01, 0xF0
        defb 0x02, 0xC0
        defb 0x00, 0x80
        defb 0x18, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_20_b
        defb 0x00, 0xFF
        defb 0x00, 0x07
        defb 0xF0, 0x03
        defb 0xF8, 0x01
        defb 0x00, 0x01
        defb 0xFC, 0x00
        defb 0xE4, 0x00
        defb 0xD0, 0x01
        defb 0xA8, 0x01
        defb 0x50, 0x03
        defb 0xB0, 0x03
        defb 0xF8, 0x01
        defb 0xA0, 0x01
        defb 0x18, 0x01
        defb 0x00, 0x81
        defb 0x00, 0xC3
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #20 y máscara
; Primera columna
    ._sprite_21_a
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFE
        defb 0x01, 0xFC
        defb 0x01, 0xF0
        defb 0x06, 0x80
        defb 0x2B, 0x00
        defb 0x50, 0x00
        defb 0x00, 0x01
        defb 0x50, 0x01
        defb 0x24, 0x00
        defb 0x0E, 0x80
        defb 0x03, 0xE0
        defb 0x00, 0xF8
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_21_b
        defb 0x00, 0xFF
        defb 0x00, 0x27
        defb 0x90, 0x07
        defb 0xB0, 0x07
        defb 0xB0, 0x07
        defb 0x40, 0x03
        defb 0xF8, 0x01
        defb 0xF8, 0x01
        defb 0x00, 0x03
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0x3F
        defb 0x80, 0x1F
        defb 0x00, 0x3F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #21 y máscara
; Primera columna
    ._sprite_22_a
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFC
        defb 0x01, 0xF8
        defb 0x02, 0xF0
        defb 0x00, 0xF0
        defb 0x02, 0xE0
        defb 0x00, 0xE0
        defb 0x02, 0xE0
        defb 0x04, 0xE0
        defb 0x02, 0xE0
        defb 0x00, 0xE0
        defb 0x06, 0xE0
        defb 0x03, 0xF0
        defb 0x00, 0xF8
        defb 0x00, 0xFE
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_22_b
        defb 0x24, 0x81
        defb 0x6C, 0x01
        defb 0x6C, 0x01
        defb 0x90, 0x00
        defb 0xFE, 0x00
        defb 0x3E, 0x00
        defb 0x00, 0x00
        defb 0x00, 0x7F
        defb 0x00, 0x7F
        defb 0x00, 0x7F
        defb 0x00, 0x7F
        defb 0x00, 0x7F
        defb 0x00, 0x7F
        defb 0x00, 0x1F
        defb 0xC0, 0x0F
        defb 0x00, 0x1F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #22 y máscara
; Primera columna
    ._sprite_23_a
        defb 0x00, 0xFF
        defb 0x00, 0xE4
        defb 0x09, 0xE0
        defb 0x0D, 0xE0
        defb 0x0D, 0xE0
        defb 0x02, 0xC0
        defb 0x1F, 0x80
        defb 0x1F, 0x80
        defb 0x00, 0xC0
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFC
        defb 0x01, 0xF8
        defb 0x00, 0xFC
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_23_b
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0x7F
        defb 0x80, 0x3F
        defb 0x80, 0x0F
        defb 0x60, 0x01
        defb 0xD4, 0x00
        defb 0x0A, 0x00
        defb 0x00, 0x80
        defb 0x0A, 0x80
        defb 0x24, 0x00
        defb 0x70, 0x01
        defb 0xC0, 0x07
        defb 0x00, 0x1F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Sprite #23 y máscara
; Primera columna
    ._sprite_24_a
        defb 0x24, 0x81
        defb 0x36, 0x80
        defb 0x36, 0x80
        defb 0x09, 0x00
        defb 0x7F, 0x00
        defb 0x7C, 0x00
        defb 0x00, 0x00
        defb 0x00, 0xFE
        defb 0x00, 0xFE
        defb 0x00, 0xFE
        defb 0x00, 0xFE
        defb 0x00, 0xFE
        defb 0x00, 0xFE
        defb 0x00, 0xF8
        defb 0x03, 0xF0
        defb 0x00, 0xF8
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
; Segunda columna
    ._sprite_24_b
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0x3F
        defb 0x80, 0x1F
        defb 0x40, 0x0F
        defb 0x00, 0x0F
        defb 0x40, 0x07
        defb 0x00, 0x07
        defb 0x40, 0x07
        defb 0x20, 0x07
        defb 0x40, 0x07
        defb 0x00, 0x07
        defb 0x60, 0x07
        defb 0xC0, 0x0F
        defb 0x00, 0x1F
        defb 0x00, 0x7F
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
        defb 0x00, 0xFF
	C_LINE	53,"ss.c::menu::0::44"
	C_LINE	55,"ss.c::menu::0::44"
	SECTION	data_compiler
._player_walk
	defw	_sprite_1_a + 0
	defw	_sprite_2_a + 0
	defw	_sprite_1_a + 0
	defw	_sprite_3_a + 0
	defw	_sprite_5_a + 0
	defw	_sprite_6_a + 0
	defw	_sprite_5_a + 0
	defw	_sprite_7_a + 0
	SECTION	code_compiler
	C_LINE	60,"ss.c::menu::0::44"
	SECTION	data_compiler
._sprite_frames
	defw	_sprite_9_a + 0
	defw	_sprite_10_a + 0
	defw	_sprite_11_a + 0
	defw	_sprite_12_a + 0
	defw	_sprite_13_a + 0
	defw	_sprite_14_a + 0
	defw	_sprite_15_a + 0
	defw	_sprite_16_a + 0
	defw	_sprite_17_a + 0
	defw	_sprite_18_a + 0
	defw	_sprite_19_a + 0
	defw	_sprite_20_a + 0
	defw	_sprite_21_a + 0
	defw	_sprite_22_a + 0
	defw	_sprite_23_a + 0
	defw	_sprite_24_a + 0
	SECTION	code_compiler
	C_LINE	0,"new_overlay.h::menu::0::44"
	C_LINE	4,"new_overlay.h::menu::0::44"
._ovl_halo	defb	0, 0, 1, 1, 1, 1, 0, 0
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 7, 7, 6, 5, 1
			defb	1, 5, 6, 7, 7, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	0, 0, 1, 1, 1, 1, 0, 0
	C_LINE	59,"new_overlay.h::menu::0::44"
	.ovl_update
		ld  a, (_ovl_x)
		bit 7, a 
		jr  z, ovl_noadj1
		xor a
	.ovl_noadj1 
		ld  (_cx1), a 
		ld  a, (_ovl_x)
		add 8
		cp  30 
		jr  c, ovl_noadj2 
		ld  a, 30 
	.ovl_noadj2 
		ld  (_cx2), a 
		ld  a, (_ovl_y)
		bit 7, a 
		jr  z, ovl_noadj3
		xor a
	.ovl_noadj3 
		ld  (_cy1), a 
		ld  a, (_ovl_y)
		add 8
		cp  18
		jr  c, ovl_noadj4
		ld  a, 18 
	.ovl_noadj4 
		ld  (_cy2), a 
		ld  de, 22561
		xor a 
	.ovl_line_loop		
		ld  (__y), a
		ld  b, a
		ld  a, (_cy1)
		ld  c, a  
		ld  a, b 				 
		cp  c  					 
		jr  c, ovl_fullblack	 
		ld  a, (_cy2) 
		ld  c, a 
		ld  a, b  				 
		cp  c  					 
		jr  nc, ovl_fullblack	 
		xor a 
	.ovl_col_loop
		ld  (__x), a 
		ld  b, a
		ld  a, (_cx1)
		ld  c, a  
		ld  a, b 				 
		cp  c  					 
		jr  c, ovl_zero  		 
	 	ld  a, (_cx2)
	 	ld  c, a 
	 	ld  a, b 				 
	 	cp  c 					 
	 	jr 	nc, ovl_zero_remaining		 
	 	ld  a, (_ovl_y)
	 	ld  c, a 
	 	ld  a, (__y)
	 	sub c 
	 	sla a 
	 	sla a 
	 	sla a
	 	ld  b, a 
	 	ld  a, (_ovl_x)
	 	ld  c, a 
	 	ld  a, (__x)
	 	sub c 
	 	add b 
	 	ld  b, 0
	 	ld  c, a 
	 	ld  hl, _ovl_halo
	 	add hl, bc
	 	ld  a, (hl)
	 	jr  ovl_set
	 .ovl_zero
	 	xor a 
	 .ovl_set 
	 	ld  (de), a 
	 	inc de
		ld  a, (__x)
		inc a 
		cp  30 
		jr  nz, ovl_col_loop		
		jr  ovl_next
	.ovl_zero_remaining
		ld  a, b 
		sla a 
		ld  b, 0 
		ld  c, a 
		ld  hl, ovl_unroll
		add hl, bc 
		xor a
		jp  (hl)
	.ovl_fullblack
		xor a 
	.ovl_unroll
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
		ld  (de), a 
		inc de
	.ovl_next
		inc de 
		inc de
		ld  a, (__y)
		inc a 
		cp  18
		jp  nz, ovl_line_loop
		ret
	C_LINE	67,"ss.c::menu::0::44"
	C_LINE	0,"leveldata.h::menu::0::44"
	C_LINE	3,"leveldata.h::menu::0::44"
	C_LINE	13,"leveldata.h::menu::0::44"
	SECTION	data_compiler
._levels
	defw	_c_level_1_bin + 0
	defb	3
	defb	3
	defb	2
	defb	128
	defb	32
	defb	4
	defw	_c_level_2_bin + 0
	defb	4
	defb	0
	defb	2
	defb	16
	defb	112
	defb	0
	defw	_c_level_3_bin + 0
	defb	4
	defb	0
	defb	1
	defb	128
	defb	48
	defb	4
	defw	_c_level_4_bin + 0
	defb	4
	defb	0
	defb	0
	defb	128
	defb	0
	defb	0
	SECTION	code_compiler
	C_LINE	68,"ss.c::menu::0::44"
	C_LINE	0,"levelstruct.h::menu::0::44"
	C_LINE	5,"levelstruct.h::menu::0::44"
	C_LINE	12,"levelstruct.h::menu::0::44"
	C_LINE	18,"levelstruct.h::menu::0::44"
	C_LINE	19,"levelstruct.h::menu::0::44"
	._level_buffer defs 3375
	C_LINE	25,"levelstruct.h::menu::0::44"
	C_LINE	26,"levelstruct.h::menu::0::44"
	._malotes defs 25*3*9 	 
	C_LINE	32,"levelstruct.h::menu::0::44"
	C_LINE	33,"levelstruct.h::menu::0::44"
	._hotspots defs 25*3 	 
	C_LINE	41,"levelstruct.h::menu::0::44"
	._level_pointer	
		defw	0
	C_LINE	48,"levelstruct.h::menu::0::44"

; Function load_level flags 0x00000208 __smallc __z88dk_fastcall 
; void load_level(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	48,"levelstruct.h::load_level::0::44"
._load_level
	push	hl
	ld	hl,_levels
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,_level_buffer
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,_levels
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,hl
	add	hl,hl
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_yOsc),a
	pop	bc
	ret


	C_LINE	53,"levelstruct.h::load_level::0::45"

; Function invalidate_tile flags 0x00000200 __smallc 
; void invalidate_tile()
	C_LINE	53,"levelstruct.h::invalidate_tile::0::45"
._invalidate_tile
			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen
			ld  a, (__x)
			ld  c, a
			inc a
			ld  e, a
			ld  a, (__y)
			ld  b, a
			inc a
			ld  d, a
			ld  iy, fsClipStruct
			call SPInvalidate			
	ret


	C_LINE	78,"levelstruct.h::invalidate_tile::0::46"

; Function invalidate_viewport flags 0x00000200 __smallc 
; void invalidate_viewport()
	C_LINE	78,"levelstruct.h::invalidate_viewport::0::46"
._invalidate_viewport
			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen
			ld  b,  1 
			ld  c,  1 
			ld  d,  1 +17
			ld  e,  1 +29
			ld  iy, vpClipStruct
			call SPInvalidate
	ret


	C_LINE	99,"levelstruct.h::invalidate_viewport::0::47"

; Function draw_coloured_tile flags 0x00000200 __smallc 
; void draw_coloured_tile()
	C_LINE	99,"levelstruct.h::draw_coloured_tile::0::47"
._draw_coloured_tile
			ld  a, (__x)
			ld  c, a
			ld  a, (__y)
			call SPCompDListAddr
			ex de, hl
			ld  a, (__t)
			ld  h, 0
			ld  l, a 
			add hl, hl 
			add hl, hl
			add hl, hl
			ld  bc, _supertiles
			add hl, bc 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			inc de
			inc de 			 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			ex  de, hl
			ld  bc, 123
			add hl, bc
			ex  de, hl			 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			inc de
			inc de 			 
			ld  a, (hl) 	 
			ld  (de), a  	 
			inc hl 
			inc de 
			ld  a, (hl) 	 
			ld  (de), a  	 
	ret


	C_LINE	173,"levelstruct.h::draw_coloured_tile::0::48"

; Function render_screen flags 0x00000200 __smallc 
; void render_screen()
	C_LINE	173,"levelstruct.h::render_screen::0::48"
._render_screen
	xor	a
	ld	(_n_blobs),a
	ld	a,1
	ld	(__x),a
	ld	hl,1	;const
	ld	a,l
	ld	(__y),a
			ld  hl, (_n_pant)
			ld  h, 0 
			ld  de, 135
			call l_mult 	 
			ld  de, _level_buffer 
			add hl, de 
			ld  b, 135 
			ld  de, _map_buffer 			
		.draw_map_loop
			ld  a, (hl)
			ld  (de), a 
			inc hl
			inc de
			push bc 
			push hl 
			push de  
			ld  (__t), a
			cp  45
			jr  z, add_blob
			cp  46
			jr  nz, add_blob_done
		.add_blob 
			ld  bc, (_n_blobs)
			ld  b, 0
			ld  hl, _blobs_x 
			add hl, bc 
			ld  a, (__x)
			ld  (hl), a 
			ld  hl, _blobs_y 
			add hl, bc 
			ld  a, (__y) 
			ld  (hl), a 
			ld  hl, _blobs_v
			add hl, bc 
			ld  a, (__t)
			sbc 45 
			ld  (hl), a 
			ld  hl, _n_blobs
			inc (hl)
		.add_blob_done
			call _draw_coloured_tile
			ld  a, (__x) 
			inc a 
			inc a 
			cp  30 +  1 
			jr  nz, draw_map_nc_x
			ld  hl, __y
			inc (hl)
			inc (hl)
			ld  a,  1 
		.draw_map_nc_x 
			ld  (__x), a 
			pop de 
			pop hl
			pop bc 
			djnz draw_map_loop
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_n_pant)
	ld	h,d
	add	hl,de
	ex	de,hl
	ld	a,(_n_pant)
	add	e
	ld	(_enoffs),a
	xor	a
	ld	(_gpit),a
	jp	i_78	;EOS
.i_76
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_78
	ld	a,(_gpit)
	sub	3
	jp	nc,i_77	;
	ld	hl,_malotes
	push	hl
	ld	de,(_enoffs)
	ld	d,0
	ld	hl,(_gpit)
	ld	h,d
	add	hl,de
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	bc,8
	add	hl,bc
	ld	a,(hl)
	ld	hl,_rdt
	ld	(hl),a
	and	a
	jp	z,i_79	;
	ld	de,_en_an_base_cell
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	push	hl
	ld	hl,(_rdt)
	ld	h,0
	dec	hl
	add	hl,hl
	add	hl,hl
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,_en_an_next_frame
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,_sprite_frames
	push	hl
	ld	de,_en_an_base_cell
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	call	l_pint_pop
	jp	i_76	;EOS
	defc	i_79 = i_76
.i_77
	ld	hl,240	;const
	ld	a,l
	ld	(_hotspot_y),a
	ld	a,l
	ld	(_hotspot_x),a
	ld	hl,_hotspots
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	ld	a,(hl)
	cp	1
	jp	nz,i_81	;
	ld	hl,_hotspots
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	ld	a,(hl)
	and	a
	jp	z,i_81	;
	defc	i_81 = i_80
.i_82_i_81
	ld	hl,_hotspots
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	rrca
	and	15
	ld	l,a
	ld	h,0
	ld	(__x),a
	ld	hl,_hotspots
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	a,(hl)
	and	15
	ld	l,a
	ld	h,0
	ld	(__y),a
	ld	hl,(__x)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	a,l
	ld	(_hotspot_x),a
	ld	hl,(__y)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	a,l
	ld	(_hotspot_y),a
	ld	hl,_map_buffer
	push	hl
	ld	hl,(__x)
	ld	h,0
	push	hl
	ld	hl,(__y)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,(__y)
	ld	h,0
	ex	de,hl
	and	a
	sbc	hl,de
	pop	de
	add	hl,de
	ld	a,(hl)
	ld	(_orig_tile),a
	ld	hl,(__x)
	ld	h,0
	inc	hl
	ex	de,hl
	ld	a,(__x)
	add	e
	ld	(__x),a
	ld	hl,(__y)
	ld	h,0
	inc	hl
	ex	de,hl
	ld	a,(__y)
	add	e
	ld	(__y),a
	ld	hl,_hotspots
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	ld	e,(hl)
	ld	d,0
	ld	hl,59	;const
	and	a
	sbc	hl,de
	ld	h,0
	ld	a,l
	ld	(__t),a
	call	_draw_coloured_tile
.i_80
	call	_invalidate_viewport
	ret


	C_LINE	298,"levelstruct.h::render_screen::0::52"
	SECTION	data_compiler
._tile_behaviour
	defb	0
	defb	8
	defb	8
	defb	8
	defb	0
	defb	0
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	0
	defb	0
	defb	0
	defb	0
	defb	8
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	8
	defb	8
	defb	8
	defb	8
	defb	8
	defb	0
	defb	0
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	0
	defb	0
	defb	0
	defb	0
	defb	8
	defb	1
	defb	1
	defb	1
	defb	24
	defb	40
	defb	4
	defb	1
	defb	1
	defb	4
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	0
	defb	0
	defb	0
	defb	0
	defb	4
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	0
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	4
	defb	0
	defb	8
	defb	8
	defb	8
	defb	0
	defb	0
	defb	4
	defb	4
	defb	0
	SECTION	code_compiler
	C_LINE	69,"ss.c::render_screen::0::52"
	C_LINE	0,"engine.h::render_screen::0::52"
	C_LINE	5,"engine.h::render_screen::0::52"

; Function espera_activa flags 0x00000208 __smallc __z88dk_fastcall 
; void espera_activa(int espera)
; parameter 'int espera' at sp+2 size(2)
	C_LINE	5,"engine.h::espera_activa::0::52"
._espera_activa
	push	hl
	call	_any_key
	ld	h,0
	ld	a,l
	ld	(_gpit),a
.i_84
	pop	hl
	dec	hl
	push	hl
	inc	hl
	ld	a,h
	or	l
	jp	z,i_85	;
			halt
	call	_any_key
	ld	a,l
	ld	hl,_gpjt
	ld	(hl),a
	and	a
	jp	z,i_87	;
	ld	a,(_gpit)
	and	a
	jp	nz,i_87	;
	defc	i_87 = i_86
	jp	i_85	;EOS
	defc	i_88_i_87 = i_85
.i_86
	ld	hl,(_gpjt)
	ld	a,l
	ld	(_gpit),a
	jp	i_84	;EOS
.i_85
	pop	bc
	ret


	C_LINE	25,"engine.h::espera_activa::0::55"

; Function init_player flags 0x00000208 __smallc __z88dk_fastcall 
; void init_player(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	25,"engine.h::init_player::0::55"
._init_player
	push	hl
			ld  a, l 				 
			sla a  					
			sla a  					 
			sla a 					 
			ld  b, 0
			ld  c, a 
			ld  ix, _levels
			add ix, bc 
			ld  a, (ix + 5) 		 
			ld  (_p_x), a 
			ld  a, (ix + 6) 		 
			ld  (_p_y), a 
			ld  a, (ix + 7) 		 
			ld  (_p_facing), a 
			xor a 
			ld  (_p_vx), a
			ld  (_p_vy), a
			ld  (_p_sal), a
			ld  (_p_nu), a
			ld  (_p_frame), a
			ld  (_p_score), a
			ld  a, 199
			ld  (_p_life), a 
			ld  hl, _sprite_1_a 
			ld  (_p_next_frame), hl
	pop	bc
	ret


	C_LINE	63,"engine.h::init_player::0::56"

; Function draw_life flags 0x00000200 __smallc 
; void draw_life()
	C_LINE	63,"engine.h::draw_life::0::56"
._draw_life
	ld	hl,(_p_life)
	ld	h,0
	ld	de,100
	ex	de,hl
	call	l_div_u
	ld	bc,246
	add	hl,bc
	ld	a,l
	ld	(_rda),a
	ld	hl,(_p_life)
	ld	h,0
	ld	de,100
	ex	de,hl
	call	l_div_u
	ld	hl,10
	call	l_div_u
	ld	bc,246
	add	hl,bc
	ld	a,l
	ld	(_rdb),a
	ld	hl,(_p_life)
	ld	h,0
	ld	de,10
	ex	de,hl
	call	l_div_u
	ex	de,hl
	ld	bc,246
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_rdc),a
			; enter:  A = row position (0..23)
			;         C = col position (0..31/63)
			;         D = pallette #
			;         E = graphic #
			ld  a, (_rda)
			ld  e, a
			ld  d, 71
			ld  c, 24
			ld  a, 22
			call SPPrintAtInv
			ld  a, (_rdb)
			ld  e, a
			ld  d, 71
			ld  c, 25
			ld  a, 22
			call SPPrintAtInv
			ld  a, (_rdc)
			ld  e, a
			ld  d, 71
			ld  c, 26
			ld  a, 22
			call SPPrintAtInv
	ret


	C_LINE	105,"engine.h::draw_life::0::57"

; Function draw_score flags 0x00000200 __smallc 
; void draw_score()
	C_LINE	105,"engine.h::draw_score::0::57"
._draw_score
	ld	hl,(_p_score)
	ld	h,0
	ld	de,10
	ex	de,hl
	call	l_div_u
	ld	bc,246
	add	hl,bc
	ld	a,l
	ld	(_rda),a
	ld	hl,(_p_score)
	ld	h,0
	ld	de,10
	ex	de,hl
	call	l_div_u
	ex	de,hl
	ld	bc,246
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_rdb),a
			; enter:  A = row position (0..23)
			;         C = col position (0..31/63)
			;         D = pallette #
			;         E = graphic #
			ld  a, (_rda)
			ld  e, a
			ld  d, 71
			ld  c, 29
			ld  a, 22
			call SPPrintAtInv
			ld  a, (_rdb)
			ld  e, a
			ld  d, 71
			ld  c, 30
			ld  a, 22
			call SPPrintAtInv
	ret


	C_LINE	137,"engine.h::draw_score::0::58"

; Function cm_two_points flags 0x00000200 __smallc 
; unsigned char cm_two_points()
	C_LINE	137,"engine.h::cm_two_points::0::58"
._cm_two_points
			ld  a, (_cx1)
			cp  15
			jr  nc, _cm_two_points_at1_reset
			ld  a, (_cy1)
			cp  9
			jr  c, _cm_two_points_at1_do
		._cm_two_points_at1_reset
			xor a
			jr  _cm_two_points_at1_done
		._cm_two_points_at1_do
			ld  a, (_cy1)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx1)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_buffer
			add hl, de
			ld  l, (hl) 
			ld  h, 0 
			ld  de, _tile_behaviour
			add hl, de
			ld  a, (hl)
		._cm_two_points_at1_done
			ld (_at1), a
			ld  a, (_cx2)
			cp  15
			jr  nc, _cm_two_points_at2_reset
			ld  a, (_cy2)
			cp  9
			jr  c, _cm_two_points_at2_do
		._cm_two_points_at2_reset
			xor a
			jr  _cm_two_points_at2_done
		._cm_two_points_at2_do
			ld  a, (_cy2)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx2)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_buffer
			add hl, de
			ld  l, (hl) 
			ld  h, 0 
			ld  de, _tile_behaviour
			add hl, de
			ld  a, (hl)
		._cm_two_points_at2_done
			ld (_at2), a
	ret


	C_LINE	216,"engine.h::cm_two_points::0::59"

; Function player_bb flags 0x00000200 __smallc 
; void player_bb()
	C_LINE	216,"engine.h::player_bb::0::59"
._player_bb
			ld  a, (_p_x)
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx1), a
			ld  a, (_p_x)
			add 15
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx2), a
			ld  a, (_p_y)
			srl a
			srl a
			srl a
			srl a
			ld  (_pty1), a
			ld  a, (_p_y)
			add 15
			ld  c, a
			srl a
			srl a
			srl a
			srl a
			ld  (_pty2), a
			ld  a, c 
			inc a
			srl a
			srl a
			srl a
			srl a
			ld  (_pty2b), a
	ret


	C_LINE	267,"engine.h::player_bb::0::60"

; Function move flags 0x00000200 __smallc 
; void move()
	C_LINE	267,"engine.h::move::0::60"
._move
	ld	hl,(_joyfunc)
	push	hl
	ld	hl,_keys
	ex	(sp),hl
	call	l_jphl
	pop	bc
	ld	a,l
	ld	(_gpit),a
	ld	hl,(_p_x)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	rrca
	and	15
	ld	l,a
	ld	h,0
	ld	(_rdx),a
	ld	hl,(_p_y)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	rrca
	and	15
	ld	l,a
	ld	h,0
	ld	(_rdy),a
			call _player_bb
			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  (_cx2), a 
			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  a, (_pty2)
			ld  (_cy2), a 
			call _cm_two_points
			ld  a, (_at1)
			ld  c, a
			ld  a, (_at2)
			or  c
			ld  (_gpjt), a 
			ld  a, (_ptx2)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 
			ld  a, (_at1)
			ld  c, a 
			ld  a, (_at2)
			or  c 
			ld  c, a 
			ld  a, (_gpjt)
			or  c 
			and 1
			jr  z, p_evil_done
			ld  hl,  0  
			call _play_sfx
			ld  hl, _p_life 
			dec (hl)
			call _draw_life		
		.p_evil_done
			ld  a, (_p_sal) 
			or  a 
			jr  nz, mp_v_j
			ld  a, 8
			jr  mp_v_j_done
		.mp_v_j
			ld  a, (_p_nu)
			cp  8
			ld  a, (_p_jmy)
			jr  nc, mp_v_j_done
			neg 
		.mp_v_j_done
			ld  (_p_vy), a 
			ld  c, a 
			ld  a, (_p_y)
			add a, c 
			ld  (_p_y), a
			call _player_bb 
			ld  a, (_possee)
			ld  (_rda), a
			xor a 
			ld  (_possee), a
			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  a, (_ptx2)
			ld  (_cx2), a
			ld  a, (_p_sal) 
			or  a 
			jr  z, mp_v_fje_done
			ld  a, (_p_y)
			and 0xf 
			jr  nz, mp_v_fje_done
			ld  a, (_pty2b)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 
			ld  a, (_at1) 
			and 0xC
			jr  nz, mp_v_fje_do 
			ld  a, (_at2)
			and 0xC 
			jr  z, mp_v_fje_done 
		.mp_v_fje_do
			xor a 
			ld  (_p_sal), a 
			ld  (_p_vy), a
		.mp_v_fje_done
			ld  a, (_p_vy)
			bit 7, a
			jr  nz, mp_v_chc_up
		.mp_v_chc_down
			ld  a, (_pty2)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 
			ld  a, (_at1)
			and 0xC 
			jr  nz, mp_v_chc_down_coll
			ld  a, (_at2)
			and 0xC
			jr  z, mp_v_chc_done
		.mp_v_chc_down_coll
			ld  a, (_p_y) 
			and 0xf0 
			ld  (_p_y), a 
			xor a 
			ld  (_p_vy), a 
			ld  (_p_sal), a 
			inc a 
			ld  (_possee), a 
			ld  a, (_rda)
			or  a 
			jr  nz, mp_v_chc_done
			ld  hl,  1 
			call _play_sfx
			jr  mp_v_chc_done
		.mp_v_chc_up
			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 
			ld  a, (_at1)
			and 0x8 
			jr  nz, mp_v_chc_up_coll
			ld  a, (_at2)
			and 0x8
			jr  z, mp_v_chc_done
		.mp_v_chc_up_coll
			ld  a, (_p_y) 
			and 0xf0
			add 16 
			ld  (_p_y), a 
			xor a 
			ld  (_p_vy), a 
			jr  mp_v_chc_done
		.mp_v_chc_done
			xor a 
			ld  (_p_vx), a 
			ld  a, (_p_sal) 
			or  a 
			jr  nz, mp_h_j
			ld  a, (_possee) 
			or  a 
			jr  z, mp_h_j_done
			ld  a, (_gpit)
			and  0x04 
			jr  nz, mp_h_nj_left_done
			ld  a, -2
			ld  (_p_vx), a 
			ld  a, 4 
			ld  (_p_facing), a
		.mp_h_nj_left_done
			ld  a, (_gpit)
			and  0x08 
			jr  nz, mp_h_nj_right_done
			ld  a, 2
			ld  (_p_vx), a 
			xor a 
			ld  (_p_facing), a
		.mp_h_nj_right_done
			ld  a, (_p_vx) 
			or  a 
			jr  z, mp_h_nj_not_moving 
			ld  a, (_p_frame)
			inc a 
			cp  4 
			jr  nz, mp_h_nj_moving_noinc
			xor a
		.mp_h_nj_moving_noinc
			ld  (_p_frame), a 
		.mp_h_nj_not_moving	
			call _player_bb 
			ld  a, (_pty2b) 	
			ld  (_cy1), a 
			ld  (_cy2), a 
			call _cm_two_points 
			ld  hl, _p_vx
			ld  a, (_at1) 
			and 16 
			jr  nz, mp_h_conv_left_do
			ld  a, (_at2)
			and 16 
			jr  z, mp_h_conv_left_done
		.mp_h_conv_left_do
			dec (hl)
		.mp_h_conv_left_done
			ld  a, (_at1) 
			and 32
			jr  nz, mp_h_conv_right_do
			ld  a, (_at2)
			and 32 
			jr  z, mp_h_conv_right_done
		.mp_h_conv_right_do
			inc (hl)
		.mp_h_conv_right_done
			jr  mp_h_j_done
		.mp_h_j
			ld  a, (_p_facing) 
			or  a 
			ld  a, (_p_jmx)
			jr  z, mp_h_j_right
			neg a 
		.mp_h_j_right
			ld  (_p_vx), a
		.mp_h_j_done
		ld  a, (_p_vx)
		ld  c, a 
		ld  a, (_p_x) 
		add c 
		ld  (_p_x), a
			call _player_bb
			ld  a, (_pty1)
			ld  (_cy1), a 
			ld  a, (_pty2)
			ld  (_cy2), a 
			ld  a, (_p_vx) 
			or  a 
			jr  z, mp_h_chc_done
			bit 7, a 
			jr  nz, mp_h_chc_left
		.mp_h_chc_right
			ld  a, (_ptx2)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 
			ld  a, (_at1) 
			and 8 
			jr  nz, mp_h_chc_right_coll
			ld  a, (_at2)
			and 8 
			jr  z, mp_h_chc_done 
		.mp_h_chc_right_coll
			ld  a, (_p_x)
			and 0xf0 
			ld  (_p_x), a 
			jr  mp_h_chc_done
		.mp_h_chc_left
			ld  a, (_ptx1)
			ld  (_cx1), a 
			ld  (_cx2), a 
			call _cm_two_points 
			ld  a, (_at1) 
			and 8 
			jr  nz, mp_h_chc_left_coll
			ld  a, (_at2)
			and 8 
			jr  z, mp_h_chc_done 
		.mp_h_chc_left_coll
			ld  a, (_p_x)
			and 0xf0 
			add 16
			ld  (_p_x), a 
		.mp_h_chc_done
			ld  a, (_p_sal) 
			or  a 
			jr  z, mp_jm_nsal
			ld  a, (_p_nu)
			inc a 
			ld  (_p_nu), a 
			cp  16
			jr  nz, mp_jm_done
			xor a 
			ld  (_p_sal), a 
			jr  mp_jm_done
		.mp_jm_nsal
			ld  (_p_nu), a
			ld  a, (_possee)
			or  a 
			jr  z, mp_jm_done
			ld  a, (_gpit) 
			and  0x01 
			jr  nz, mp_jm_up_done
			ld  a, 2
			ld  (_p_jmx), a 
			ld  a, 4 
			ld  (_p_jmy), a 
			ld  a, 1 
			ld  (_p_sal), a
			ld  hl,  2 
			call _play_sfx
		.mp_jm_up_done
			ld  a, (_gpit) 
			and  0x02 
			jr  nz, mp_jm_done
			ld  a, 4
			ld  (_p_jmx), a 
			ld  a, 2 
			ld  (_p_jmy), a 
			ld  a, 1 
			ld  (_p_sal), a
			ld  hl,  2 
			call _play_sfx
		.mp_jm_done
	ld	a,(_possee)
	and	a
	jp	z,i_89	;
	ld	hl,_player_walk
	push	hl
	ld	de,(_p_facing)
	ld	d,0
	ld	hl,(_p_frame)
	ld	h,d
	add	hl,de
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	ld	(_p_next_frame),hl
	jp	i_90	;EOS
.i_89
	ld	a,(_p_facing)
	and	a
	jp	z,i_91	;
	ld	hl,_sprite_8_a
	ld	(_p_next_frame),hl
	jp	i_92	;EOS
.i_91
	ld	hl,_sprite_4_a
	ld	(_p_next_frame),hl
.i_92
.i_90
	ret


	C_LINE	864,"engine.h::move::0::65"

; Function collide flags 0x00000200 __smallc 
; unsigned char collide()
	C_LINE	864,"engine.h::collide::0::65"
._collide
			ld  hl, 0
			ld  a, (__en_x)
			ld  c, a 
			ld  a, (_p_x)
			add  8 
			cp  c
			ret c 
			ld  a, (_p_x)
			ld  c, a 
			ld  a, (__en_x)
			add  8 
			cp  c 
			ret c
			ld  a, (__en_y)
			ld  c, a 
			ld  a, (_p_y)
			add  8 
			cp  c
			ret c 
			ld  a, (_p_y)
			ld  c, a 
			ld  a, (__en_y)
			add  8 
			cp  c 
			ret c
			ld  l, 1
	ret


	C_LINE	907,"engine.h::collide::0::66"

; Function calc_baddies_pointer flags 0x00000200 __smallc 
; void calc_baddies_pointer()
	C_LINE	907,"engine.h::calc_baddies_pointer::0::66"
._calc_baddies_pointer
			ld  d, h
			ld  e, l 				 
			add hl, hl 				 
			add hl, hl 				 
			add hl, hl 				 
			add hl, de 				 
			ld  de, _malotes
			add hl, de
	ret


	C_LINE	927,"engine.h::calc_baddies_pointer::0::67"

; Function move_enemies flags 0x00000200 __smallc 
; void move_enemies()
	C_LINE	927,"engine.h::move_enemies::0::67"
._move_enemies
			ld  a, (_enoffs)
			ld  (_enoffsmasi), a 
			xor a
		.move_enemies_loop
			ld  (_enit), a
			ld  hl, (_enoffsmasi)
			ld  h, 0 
			call _calc_baddies_pointer
			ld  (__baddies_pointer), hl 		 
			ld  a, (hl)
			ld  (__en_x), a
			inc hl 
			ld  a, (hl)
			ld  (__en_y), a
			inc hl
			ld  a, (hl)
			ld  (__en_x1), a
			inc hl 
			ld  a, (hl)
			ld  (__en_y1), a
			inc hl 
			ld  a, (hl)
			ld  (__en_x2), a
			inc hl 
			ld  a, (hl)
			ld  (__en_y2), a
			inc hl 
			ld  a, (hl)
			ld  (__en_mx), a
			inc hl 
			ld  a, (hl)
			ld  (__en_my), a
			inc hl 
			ld  a, (hl)
			ld  (__en_t), a
			ld  a, (__en_t)
			or  a 
			jr  nz, update_this_enem	
		.next_enem
			ld  hl, _enoffsmasi
			inc (hl)
			ld  a, (_enit)
			inc a 
			cp  3
			jr  nz, move_enemies_loop
			ret
		.update_this_enem
			ld  a, (__en_mx)
			ld  c, a
			ld  a, (__en_x)
			add c 
			ld  (__en_x), a
			ld  (_rdx), a
			ld  a, (__en_my)
			ld  c, a
			ld  a, (__en_y)
			add c 
			ld  (__en_y), a
			ld  (_rdy), a
			ld  a, (__en_x)
			ld  c, a 
			ld  a, (__en_x1)
			cp  c 
			jr  z, change_en_mx 
			ld  a, (__en_x2)
			cp  c 
			jr  nz, nochange_en_mx
		.change_en_mx
			ld  a, (__en_mx) 
			neg a
			ld  (__en_mx), a
		.nochange_en_mx
			ld  a, (__en_y)
			ld  c, a 
			ld  a, (__en_y1)
			cp  c 
			jr  z, change_en_my
			ld  a, (__en_y2)
			cp  c 
			jr  nz, nochange_en_my
		.change_en_my
			ld  a, (__en_my) 
			neg a
			ld  (__en_my), a
		.nochange_en_my
			call _collide
			xor a 
			or  l
			jr  z, nocollide_en
			ld  a, (_p_life) 
			or  a 
			jr  z, nocollide_en
			dec a 
			ld  (_p_life), a 
			call _draw_life
			ld	hl,  0 
			call _play_sfx
		.nocollide_en
			ld  bc, (_enit) 
			ld  b, 0
			ld  hl, _en_an_count
			add hl, bc 
			inc (hl)
			ld  a, (hl)
			cp  4 
			jr  nz, noupd_en_spr
		.upd_en_spr 
			xor a 
			ld  (hl), a 
			ld  hl, _en_an_frame 
			add hl, bc 
			ld  a, (hl) 
			xor 1 
			ld  (hl), a 
			ld  d, a 					 
			ld  e, 0 					 
			ld  a, (__en_mx)  	
			bit 7, a  					 
			jr  nz, setFacing 
			ld  a, (__en_my) 
			bit 7, a  					 
			jr  z, setFacingDone 
		.setFacing 
			ld  e, 2
		.setFacingDone 
			ld  hl, _en_an_base_cell 
			add hl, bc 
			ld  a, (hl) 
			add d 
			add e 						 
			ld  hl, _en_an_next_frame 
			add hl, bc 
			add hl, bc 					 
			ex  de, hl 					 
			sla a 						 
			ld  b, 0
			ld  c, a 
			ld  hl, _sprite_frames
			add hl, bc 					 
			ldi
			ldi
		.noupd_en_spr 
			ld  hl, (__baddies_pointer) 		 
			ld  a, (__en_x)
			ld  (hl), a
			inc hl
			ld  a, (__en_y)
			ld  (hl), a
			ld  bc, 5
			add hl, bc
			ld  a, (__en_mx)
			ld  (hl), a
			inc hl
			ld  a, (__en_my)
			ld  (hl), a
			jp next_enem
	ret


	C_LINE	1176,"engine.h::move_enemies::0::68"

; Function init_hotspots flags 0x00000200 __smallc 
; void init_hotspots()
	C_LINE	1176,"engine.h::init_hotspots::0::68"
._init_hotspots
			ld  b, 25
			ld  hl, _hotspots + 2
			ld  de, 3
			ld  a, 1
		.init_hotspots_loop
			ld  (hl), a
			add hl, de
			djnz init_hotspots_loop
	ret


	C_LINE	1194,"engine.h::init_hotspots::0::69"

; Function muerte flags 0x00000200 __smallc 
; void muerte(unsigned char a, unsigned char b)
; parameter 'unsigned char b' at sp+2 size(1)
; parameter 'unsigned char a' at sp+4 size(1)
	C_LINE	1194,"engine.h::muerte::0::69"
._muerte
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(_rda),a
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	ld	(_rdb),a
	xor	a
	ld	(_rdc),a
	ld	hl,0	;const
	call	_play_sfx
			ld  a, 100
			ld  (_gpit), a
		.muerte_loop
			call _any_key
			xor a 
			or  l 
			ret nz 
			ld  a, (_rda) 
			ld  c, a
			ld  a, (_rdc) 
			xor 1 
			jr  z, muerte_nochangecol
			ld  hl,  1 
			call _play_sfx
			ld  a, (_rdb) 
		.muerte_nochangecol
			ld	hl, 22561
			ld	de, 22561
			ld	b, 18
			halt
		.mb1	
			push bc
			ld	(hl), a
			inc	de
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			inc	hl
			inc hl
			inc hl
			push hl
			pop	de
			pop bc
			djnz mb1
			ld  a, (_gpit)
			or  a
			djnz muerte_loop
	ret


	C_LINE	1286,"engine.h::muerte::0::70"

; Function rand flags 0x00000200 __smallc 
; unsigned char rand()
	C_LINE	1286,"engine.h::rand::0::70"
._rand
		.rand16
			ld	hl, _seed
			ld	a, (hl)
			ld	e, a
			inc	hl
			ld	a, (hl)
			ld	d, a
			;; Ahora DE = [SEED]
			ld	a,	d
			ld	h,	e
			ld	l,	253
			or	a
			sbc	hl,	de
			sbc	a, 	0
			sbc	hl,	de
			ld	d, 	0
			sbc	a, 	d
			ld	e,	a
			sbc	hl,	de
			jr	nc,	nextrand
			inc	hl
		.nextrand
			ld	d,	h
			ld	e,	l
			ld	hl, _seed
			ld	a,	e
			ld	(hl), a
			inc	hl
			ld	a,	d
			ld	(hl), a
			;; Ahora [SEED] = HL
			ld  l, e
			ret
	ret


	C_LINE	1330,"engine.h::rand::0::71"

; Function game flags 0x00000208 __smallc __z88dk_fastcall 
; unsigned char game(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	1330,"engine.h::game::0::71"
._game
	push	hl
	ld	hl,_levels
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,_levels
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	bc,4
	add	hl,bc
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,hl
	add	hl,hl
	add	hl,bc
	pop	de
	add	hl,de
	ld	a,l
	ld	(_n_pant),a
	pop	hl
	push	hl
	ld	h,0
	call	_load_level
	pop	hl
	push	hl
	ld	h,0
	call	_init_player
	call	_init_hotspots
			call SPUpdateNow
	call	_blackout_everything
	ld	hl,_scr_marcador_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	call	_draw_life
	call	_draw_score
	ld	a,255
	ld	(_o_pant),a
	xor	a
	ld	(_f_win),a
	pop	hl
	push	hl
	ld	h,0
	call	_arkos_play_music
.i_93
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_o_pant)
	ld	h,d
	call	l_ne
	jp	nc,i_95	;
	call	_render_screen
	ld	hl,(_n_pant)
	ld	h,0
	ld	a,l
	ld	(_o_pant),a
.i_95
	call	_move
	call	_move_enemies
				ld  a, (_n_blobs)
				ld  c, a
				call _rand 
				ld  a, l 
				and 15  		 
				cp  c 
				jr  nc, ml_an_b_done
				ld  b, 0 
				ld  c, a 
				ld  hl, _blobs_v 
				add hl, bc 
				ld  a, (hl)
				xor 1 
				ld  (hl), a 
				add 45
				ld  (__t), a 
				ld  hl, _blobs_x 
				add hl, bc 
				ld  a, (hl)
				ld  (__x), a 
				ld  hl, _blobs_y 
				add hl, bc 
				ld  a, (hl)
				ld  (__y), a 
				call _draw_coloured_tile
				call _invalidate_tile				
			.ml_an_b_done
				ld  a, (_hotspot_x)
				ld  (__en_x), a 
				ld  a, (_hotspot_y)
				ld  (__en_y), a 
				call _collide 
				xor a 
				or  l 
				jr  z, ml_hotspots_done
			.ml_hotspots
				ld  a, (_hotspot_x)
				srl a 
				srl a 
				srl a 
				add  1 
				ld  (__x), a 
				ld  a, (_hotspot_y)
				srl a 
				srl a 
				srl a 
				add  1 
				ld  (__y), a 
				ld  a, (_orig_tile)
				ld  (__t), a 
				call _draw_coloured_tile
				call _invalidate_tile
				ld  a, 0xf0
				ld  (_hotspot_y), a
				ld  bc, (_enoffs)
				ld  b, 0 
				ld  ix, _hotspots 
				add ix, bc 
				ld  a, (ix + 1) 	 
				dec a 
				jr  nz, ml_hotspots_t2
				ld  hl, _p_score
				inc (hl)
				call _draw_score
				ld  hl,  4 
				call _play_sfx
				jr  ml_hotspots_deact
			.ml_hotspots_t2 
				ld  a, (_p_life)
				cp  224
				jr  c, ml_inclife
				ld  a, 0xff
				jr  ml_setlife
			.ml_inclife	
				add 32
			.ml_setlife
				ld  (_p_life), a
				ld  hl,  3 
				call _play_sfx
				call _draw_life
			.ml_hotspots_deact
				xor a 
				ld  (ix + 2), a
			.ml_hotspots_done
				ld  ix, (_sp_player)
				ld  iy, vpClipStruct
				ld  hl, (_p_next_frame)
				ld  de, (_p_current_frame)
				or  a
				sbc hl, de
				ld  b, h
				ld  c, l
				ld  a, (_p_y)
				srl a
				srl a
				srl a
				add  1 
				ld  h, a 
				ld  a, (_p_x)
				srl a
				srl a
				srl a
				add  1 
				ld  l, a 
				ld  a, (_p_x)
				and 7
				ld  d, a
				ld  a, (_p_y)
				and 7
				ld  e, a
				call SPMoveSprAbs
	ld	hl,(_p_next_frame)
	ld	(_p_current_frame),hl
	xor	a
	ld	(_enit),a
	jp	i_98	;EOS
.i_96
	ld	hl,_enit
	ld	a,(hl)
	inc	(hl)
.i_98
	ld	a,(_enit)
	sub	3
	jp	nc,i_97	;
	ld	hl,_enoffs
	ld	a,(_enit)
	add	(hl)
	ld	(_enoffsmasi),a
	ld	hl,_malotes
	push	hl
	ld	hl,(_enoffsmasi)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	bc,8
	add	hl,bc
	ld	a,(hl)
	and	a
	jp	z,i_99	;
	ld	hl,_malotes
	push	hl
	ld	hl,(_enoffsmasi)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	a,(hl)
	ld	(__en_x),a
	ld	hl,_malotes
	push	hl
	ld	hl,(_enoffsmasi)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	ld	a,(hl)
	ld	(__en_y),a
	jp	i_100	;EOS
.i_99
	ld	hl,240	;const
	ld	a,l
	ld	(__en_x),a
.i_100
				; enter: IX = sprite structure address 
				;        IY = clipping rectangle, set it to "ClipStruct" for full screen 
				;        BC = animate bitdef displacement (0 for no animation) 
				;         H = new row coord in chars 
				;         L = new col coord in chars 
				;         D = new horizontal rotation (0..7) ie horizontal pixel position 
				;         E = new vertical rotation (0..7) ie vertical pixel position 
				ld  a, (_enit)
				sla a
				ld  c, a
				ld  b, 0 				 
				ld  hl, _sp_moviles
				add hl, bc
				ld  e, (hl)
				inc hl 
				ld  d, (hl)
				push de						
				pop ix
				ld  iy, vpClipStruct
				ld  hl, _en_an_current_frame
				add hl, bc 				 
				ld  e, (hl)
				inc hl 
				ld  d, (hl) 			 
				ld  hl, _en_an_next_frame
				add hl, bc 				 
				ld  a, (hl)
				inc hl
				ld  h, (hl)
				ld  l, a 				 
				or  a 					 
				sbc hl, de 				 
				push bc 				 
				ld  b, h
				ld  c, l 				 
				ld  a, (__en_y)					
				srl a
				srl a
				srl a
				add  1 
				ld h, a
				ld  a, (__en_x)
				srl a
				srl a
				srl a
				add  1 
				ld  l, a
				ld  a, (__en_x)
				and 7
				ld  d, a
				ld  a, (__en_y)
				and 7
				ld  e, a
				call SPMoveSprAbs
				pop bc 					 
				ld  hl, _en_an_current_frame
				add hl, bc
				ex  de, hl 				 
				ld  hl, _en_an_next_frame
				add hl, bc 				 
				ldi
				ldi
	jp	i_96	;EOS
.i_97
	ld	a,(_half_life)
	xor	1
	ld	l,a
	ld	h,0
	ld	(_half_life),a
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_yOsc)
	ld	h,d
	call	l_uge
	ld	a,l
	ld	(_attrs_byte),a
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_yOsc)
	ld	h,d
	call	l_uge
	jp	nc,i_101	;
					ld  a, (_yOsc)
					ld  c, a 
					ld  a, (_n_pant)
					cp  c 
					ld  hl, _attrs_byte 
					jr  c, nohalo
					ld  a, 1
					ld  (hl), a
					ld  a, (_p_x)
					srl a 
					srl a 
					srl a 
					sub 3
					ld  (_ovl_x), a
					ld  a, (_p_y)
					srl a 
					srl a 
					srl a 
					sub 3 
					ld  (_ovl_y), a
					call ovl_update
					jr  halodone
				.nohalo
					xor a 					
					ld  (hl), a 
				.halodone
.i_101
			.ml_min_faps_loop
				ld  a, (_isrc)
				cp  2
				jr  nc, ml_min_faps_loop_end
				halt
				jr  ml_min_faps_loop
			.ml_min_faps_loop_end
				xor a
				ld  (_isrc), a
				inc a
				call SPUpdateNow
	ld	a,(_p_life)
	and	a
	jp	z,i_103	;
	ld	hl,(_key_g)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jr	z,i_104
.i_103
	ld	hl,1	;const
.i_104
	ld	a,h
	or	l
	jp	z,i_102	;
	ld	hl,6	;const
	call	_arkos_play_music
	ld	hl,2	;const
	push	hl
	ld	hl,16	;const
	push	hl
	call	_muerte
	pop	bc
	pop	bc
	jp	i_94	;EOS
.i_102
	ld	a,(_p_score)
	cp	15
	jp	nz,i_105	;
	ld	hl,6	;const
	call	_arkos_play_music
	ld	a,1
	ld	(_f_win),a
	jp	i_94	;EOS
.i_105
				ld  hl, _n_pant
				ld  a, (_p_vx)
				or  a 
				jr  z, flick_left_done
				bit 7, a
				jr  z, flick_left_done 
				ld  a, (_p_x) 
				or  a 
				jr  z, flick_left_do 
				cp  240 
				jr  c, flick_left_done
			.flick_left_do
				ld  a, 224
				ld  (_p_x), a
				dec (hl)
			.flick_left_done
				ld  a, (_p_x)
				cp  224
				jr  c, flick_right_done 
				ld  a, (_p_vx)
				or  a 
				jr  z, flick_right_done
				bit  7, a
				jr  nz, flick_right_done
			.flick_right_do
				xor a
				ld  (_p_x), a 
				inc (hl)
			.flick_right_done
				ld  a, (_p_vy)
				or  a 
				jr  z, flick_up_done 
				bit 7, a 
				jr  z, flick_up_done
				ld  a, (_p_y)
				or  a 
				jr  z, flick_up_do 
				cp  240
				jr  c, flick_up_done
			.flick_up_do
				ld  a, (_n_pant)
				cp  5
				jr  c, flick_up_out_of_the_map
				ld  a, 128
				ld  (_p_y), a 
				ld  a, (_n_pant)
				sub 5 
				ld  (_n_pant), a
				jr  flick_up_done
			.flick_up_out_of_the_map
				xor a 
				ld  (_p_y), a
				ld  (_p_vy), a
			.flick_up_done
				ld  a, (_n_pant)
				cp  20
				jr  nc, flick_down_done 
				ld  a, (_p_vy) 
				or  a 
				jr  z, flick_down_done
				bit 7, a 
				jr  nz, flick_down_done
				ld  a, (_p_y)
				cp  128 
				jr  c, flick_down_done
			.flick_down_do
				xor a
				ld  (_p_y), a
				ld  a, (_n_pant)
				add 5 
				ld  (_n_pant), a
			.flick_down_done
	jp	i_93	;EOS
.i_94
	ld	hl,(_f_win)
	ld	h,0
	pop	bc
	ret


	C_LINE	70,"ss.c::game::0::80"
	C_LINE	74,"ss.c::game::0::80"

; Function main flags 0x00000000 __stdc 
; void main()
	C_LINE	74,"ss.c::main::0::81"
._main
		di
		xor a 
		out (254), a
	ld	hl,61937	;const
	push	hl
	call	sp_InitIM2
	pop	bc
	ld	hl,61937	;const
	push	hl
	call	sp_CreateGenericISR
	pop	bc
	ld	hl,255	;const
	push	hl
	ld	hl,_ISR
	push	hl
	call	sp_RegisterHook
	pop	bc
	pop	bc
	ld	hl,0	;const
	push	hl
	push	hl
	call	sp_Initialize
	pop	bc
	pop	bc
	ld	hl,0	;const
	push	hl
	ld	hl,40	;const
	push	hl
	ld	hl,14	;const
	push	hl
	ld	hl,_AD_FREE
	push	hl
	call	sp_AddMemory
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,sp_JoyKeyboard
	ld	(_joyfunc),hl
			ld  b, 0
			ld  hl, SPTileArray
			ld  de, _tileset
		.load_tileset_loop
			ld  (hl), e
			inc h
			ld  (hl), d
			dec h
			inc hl
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			inc de
			djnz load_tileset_loop
	ld	hl,0	;const
	push	hl
	ld	hl,3	;const
	push	hl
	ld	hl,_sprite_1_a
	push	hl
	call	sp_CreateSpr
	pop	bc
	pop	bc
	pop	bc
	ld	(_sp_player),hl
	push	hl
	ld	hl,_sprite_1_b
	push	hl
	call	sp_AddColSpr
	pop	bc
	pop	bc
	ld	hl,(_sp_player)
	push	hl
	ld	hl,_sprite_1_b
	push	hl
	call	sp_AddColSpr
	pop	bc
	pop	bc
	ld	hl,_sprite_1_a
	ld	(_p_next_frame),hl
	ld	(_p_current_frame),hl
	xor	a
	ld	(_gpit),a
	jp	i_108	;EOS
.i_106
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_108
	ld	a,(_gpit)
	sub	3
	jp	nc,i_107	;
	ld	hl,_sp_moviles
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,0	;const
	push	hl
	ld	hl,3	;const
	push	hl
	ld	hl,_sprite_9_a
	push	hl
	call	sp_CreateSpr
	pop	bc
	pop	bc
	pop	bc
	call	l_pint_pop
	ld	hl,_sp_moviles
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,_sprite_9_b
	push	hl
	call	sp_AddColSpr
	pop	bc
	pop	bc
	ld	hl,_sp_moviles
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,_sprite_9_b
	push	hl
	call	sp_AddColSpr
	pop	bc
	pop	bc
	ld	hl,_en_an_current_frame
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,_en_an_next_frame
	push	hl
	ld	hl,(_gpit)
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,_sprite_9_a
	call	l_pint
	call	l_pint_pop
	jp	i_106	;EOS
.i_107
		.fix_sprites
			ld  b, 6
			ld  hl, (_sp_player) 			 
			call _fix_sprites
			ld  de, _sp_moviles
			ld  b, 3
		.fix_sprites_rep1
			push bc
			ld  a, (de)
			ld  l, a
			inc de 
			ld  a, (de)
			ld  h, a
			inc de 
			ld  b, 6
			call _fix_sprites
			pop bc 
			djnz fix_sprites_rep1
			ld  bc, 0x7ffd
			xor a
			out (c), a
			ld  a, (0x1)
			ld  h, a
			ld  a, 0x10
			out (c), a
			ld  a, (0x1)
			cp  h
			jr  z, no128K
			call _arkos_init
			ld  a, 1 
			jr  detection_done
		.no128K
			xor a
		.detection_done
			ld  (_is128k), a
			ei
	ld	hl,6	;const
	call	_arkos_play_music
	call	_blackout_everything
	ld	hl,_scr_mojon_twins_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,3	;const
	call	_play_sfx
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	hl,_scr_ubhres_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,3	;const
	call	_play_sfx
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	hl,_scr_sheet_bin
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_unpack
	pop	bc
	pop	bc
	ld	hl,3	;const
	call	_play_sfx
	ld	hl,1000	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	a,10
	ld	(__x),a
	ld	a,10
	ld	(__y),a
	ld	a,70
	ld	(__c),a
	ld	hl,i_1+165
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,9
	ld	(__x),a
	ld	a,12
	ld	(__y),a
	ld	a,71
	ld	(__c),a
	ld	hl,i_1+178
	ld	(_str_pt),hl
	call	_draw_fast
	ld	a,8
	ld	(__x),a
	ld	a,13
	ld	(__y),a
	ld	hl,i_1+193
	ld	(_str_pt),hl
	call	_draw_fast
	ld	hl,4	;const
	call	_play_sfx
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_menu
	ret


	C_LINE	0,"binassets.h::main::0::83"
	C_LINE	3,"binassets.h::main::0::83"
	._c_level_1_bin
		BINARY "../bin/c-level1.bin"
	C_LINE	10,"binassets.h::main::0::83"
	._c_level_2_bin
		BINARY "../bin/c-level2.bin"
	C_LINE	17,"binassets.h::main::0::83"
	._c_level_3_bin
		BINARY "../bin/c-level3.bin"
	C_LINE	24,"binassets.h::main::0::83"
	._c_level_4_bin
		BINARY "../bin/c-level4.bin"
	C_LINE	31,"binassets.h::main::0::83"
	._scr_mojon_twins_bin
		BINARY "../bin/ram3-mojon-twins.bin"
	C_LINE	38,"binassets.h::main::0::83"
	._scr_ubhres_bin
		BINARY "../bin/ram3-ubhres.bin"
	C_LINE	45,"binassets.h::main::0::83"
	._scr_sheet_bin
		BINARY "../bin/ram3-sheet.bin"
	C_LINE	52,"binassets.h::main::0::83"
	._scr_menu_bin
		BINARY "../bin/ram3-menu.bin"
	C_LINE	59,"binassets.h::main::0::83"
	._scr_marcador_bin
		BINARY "../bin/ram3-marcador.bin"
	C_LINE	66,"binassets.h::main::0::83"
	._scr_final_bin
		BINARY "../bin/ram3-final.bin"
	C_LINE	224,"ss.c::main::0::83"
	SECTION	rodata_compiler
.i_1
	defm	"LEVEL 0X"
	defb	0

	defm	"PASSWORD"
	defb	0

	defm	"ESTA NOCHE PAJA!"
	defb	0

	defm	"ENTER PASSWORD"
	defb	0

	defm	"                       "
	defb	0

	defm	"] MOJON TWINS 2011, 2023"
	defb	0

	defm	"1 PLAY    "
	defb	0

	defm	"2 PASSWORD"
	defb	0

	defm	"3 CONTROLS"
	defb	0

	defm	"1 KEYBOARD"
	defb	0

	defm	"2 SINCLAIR"
	defb	0

	defm	"3 KEMPSTON"
	defb	0

	defm	"DEDICATED TO"
	defb	0

	defm	"ENRIC  CERVERA"
	defb	0

	defm	"EMILIO SALGUEIRO"
	defb	0


; --- Start of Static Variables ---

	SECTION	bss_compiler
._AD_FREE	defs	600
._joyfunc	defs	2
._sp_player	defs	2
._sp_moviles	defs	6
._half_life	defs	1
._enoffs	defs	1
._gpit	defs	1
._gpjt	defs	1
._rda	defs	1
._rdb	defs	1
._rdc	defs	1
._rdx	defs	1
._rdy	defs	1
._rdt	defs	1
.__x	defs	1
.__y	defs	1
.__c	defs	1
.__t	defs	1
._cx1	defs	1
._cx2	defs	1
._cy1	defs	1
._cy2	defs	1
._at1	defs	1
._at2	defs	1
._ptx1	defs	1
._ptx2	defs	1
._pty1	defs	1
._pty2	defs	1
._pty2b	defs	1
._denew	defs	1
._gpint	defs	2
._gen_pt	defs	2
._map_pt	defs	2
._str_pt	defs	2
._n_pant	defs	1
._o_pant	defs	1
._map_pointer	defs	2
._p_x	defs	1
._p_y	defs	1
._p_vx	defs	1
._p_vy	defs	1
._p_jmx	defs	1
._p_jmy	defs	1
._p_sal	defs	1
._p_nu	defs	1
._p_frame	defs	1
._p_facing	defs	1
._p_life	defs	1
._p_score	defs	1
._p_current_frame	defs	2
._p_next_frame	defs	2
._possee	defs	1
.__en_x	defs	1
.__en_y	defs	1
._enoffsmasi	defs	1
._enit	defs	1
._en_an_frame	defs	3
._en_an_count	defs	3
._en_an_base_cell	defs	3
._en_an_current_frame	defs	6
._en_an_next_frame	defs	6
._en_x	defs	3
._en_y	defs	3
._en_vx	defs	3
._en_vy	defs	3
.__en_x1	defs	1
.__en_y1	defs	1
.__en_x2	defs	1
.__en_y2	defs	1
.__en_mx	defs	1
.__en_my	defs	1
.__en_t	defs	1
.__baddies_pointer	defs	2
._blobs_v	defs	20
._blobs_x	defs	20
._blobs_y	defs	20
._n_blobs	defs	1
._hotspot_x	defs	1
._hotspot_y	defs	1
._orig_tile	defs	1
._f_win	defs	1
._ovl_x	defs	1
._ovl_y	defs	1
._password	defs	32
	SECTION	code_compiler


; --- Start of Scope Defns ---

	GLOBAL	_u_malloc
	GLOBAL	_u_free
	GLOBAL	sp_InitIM2
	GLOBAL	sp_InstallISR
	GLOBAL	sp_EmptyISR
	GLOBAL	sp_CreateGenericISR
	GLOBAL	sp_RegisterHook
	GLOBAL	sp_RegisterHookFirst
	GLOBAL	sp_RegisterHookLast
	GLOBAL	sp_RemoveHook
	GLOBAL	sp_Initialize
	GLOBAL	sp_SwapEndian
	GLOBAL	sp_Swap
	GLOBAL	sp_PFill
	GLOBAL	sp_StackSpace
	GLOBAL	sp_Random32
	GLOBAL	sp_Border
	GLOBAL	sp_inp
	GLOBAL	sp_outp
	GLOBAL	sp_IntRect
	GLOBAL	sp_IntLargeRect
	GLOBAL	sp_IntPtLargeRect
	GLOBAL	sp_IntIntervals
	GLOBAL	sp_IntPtInterval
	GLOBAL	sp_CreateSpr
	GLOBAL	sp_AddColSpr
	GLOBAL	sp_DeleteSpr
	GLOBAL	sp_IterateSprChar
	GLOBAL	sp_RemoveDList
	GLOBAL	sp_MoveSprAbs
	GLOBAL	sp_MoveSprAbsC
	GLOBAL	sp_MoveSprAbsNC
	GLOBAL	sp_MoveSprRel
	GLOBAL	sp_MoveSprRelC
	GLOBAL	sp_MoveSprRelNC
	GLOBAL	sp_PrintAt
	GLOBAL	sp_PrintAtInv
	GLOBAL	sp_ScreenStr
	GLOBAL	sp_PrintAtDiff
	GLOBAL	sp_PrintString
	GLOBAL	sp_ComputePos
	GLOBAL	sp_TileArray
	GLOBAL	sp_Pallette
	GLOBAL	sp_GetTiles
	GLOBAL	sp_PutTiles
	GLOBAL	sp_IterateDList
	GLOBAL	sp_AddMemory
	GLOBAL	sp_BlockAlloc
	GLOBAL	sp_BlockFit
	GLOBAL	sp_FreeBlock
	GLOBAL	sp_InitAlloc
	GLOBAL	sp_BlockCount
	GLOBAL	sp_Invalidate
	GLOBAL	sp_Validate
	GLOBAL	sp_ClearRect
	GLOBAL	sp_UpdateNow
	GLOBAL	sp_UpdateNowEx
	GLOBAL	sp_CompDListAddr
	GLOBAL	sp_CompDirtyAddr
	GLOBAL	sp_JoySinclair1
	GLOBAL	sp_JoySinclair2
	GLOBAL	sp_JoyTimexEither
	GLOBAL	sp_JoyTimexLeft
	GLOBAL	sp_JoyTimexRight
	GLOBAL	sp_JoyFuller
	GLOBAL	sp_JoyKempston
	GLOBAL	sp_JoyKeyboard
	GLOBAL	sp_WaitForKey
	GLOBAL	sp_WaitForNoKey
	GLOBAL	sp_Pause
	GLOBAL	sp_Wait
	GLOBAL	sp_LookupKey
	GLOBAL	sp_GetKey
	GLOBAL	sp_Inkey
	GLOBAL	sp_KeyPressed
	GLOBAL	sp_MouseAMXInit
	GLOBAL	sp_MouseAMX
	GLOBAL	sp_SetMousePosAMX
	GLOBAL	sp_MouseKempston
	GLOBAL	sp_SetMousePosKempston
	GLOBAL	sp_MouseSim
	GLOBAL	sp_SetMousePosSim
	GLOBAL	sp_CharDown
	GLOBAL	sp_CharLeft
	GLOBAL	sp_CharRight
	GLOBAL	sp_CharUp
	GLOBAL	sp_GetAttrAddr
	GLOBAL	sp_GetCharAddr
	GLOBAL	sp_GetScrnAddr
	GLOBAL	sp_PixelDown
	GLOBAL	sp_PixelUp
	GLOBAL	sp_PixelLeft
	GLOBAL	sp_PixelRight
	GLOBAL	sp_ListCreate
	GLOBAL	sp_ListCount
	GLOBAL	sp_ListFirst
	GLOBAL	sp_ListLast
	GLOBAL	sp_ListNext
	GLOBAL	sp_ListPrev
	GLOBAL	sp_ListCurr
	GLOBAL	sp_ListAdd
	GLOBAL	sp_ListInsert
	GLOBAL	sp_ListAppend
	GLOBAL	sp_ListPrepend
	GLOBAL	sp_ListRemove
	GLOBAL	sp_ListConcat
	GLOBAL	sp_ListFree
	GLOBAL	sp_ListTrim
	GLOBAL	sp_ListSearch
	GLOBAL	sp_HashCreate
	GLOBAL	sp_HashRemove
	GLOBAL	sp_HashLookup
	GLOBAL	sp_HashAdd
	GLOBAL	sp_HashDelete
	GLOBAL	sp_Heapify
	GLOBAL	sp_HeapSiftDown
	GLOBAL	sp_HeapSiftUp
	GLOBAL	sp_HeapAdd
	GLOBAL	sp_HeapExtract
	GLOBAL	sp_HuffCreate
	GLOBAL	sp_HuffDelete
	GLOBAL	sp_HuffAccumulate
	GLOBAL	sp_HuffExtract
	GLOBAL	sp_HuffSetState
	GLOBAL	sp_HuffGetState
	GLOBAL	sp_HuffDecode
	GLOBAL	sp_HuffEncode
	GLOBAL	_AD_FREE
	defc	_safe_byte	= 23296
	defc	_ram_address	= 23297
	defc	_ram_destination	= 23299
	defc	_ram_page	= 23301
	defc	_attrs_byte	= 23304
	defc	_isrc	= 23305
	defc	_is128k	= 23306
	GLOBAL	_joyfunc
	GLOBAL	_my_malloc
	GLOBAL	_sp_player
	GLOBAL	_sp_moviles
	GLOBAL	_asm_number
	GLOBAL	_asm_int
	GLOBAL	_asm_int_2
	GLOBAL	_seed
	GLOBAL	_half_life
	GLOBAL	_enoffs
	GLOBAL	_gpit
	GLOBAL	_gpjt
	GLOBAL	_rda
	GLOBAL	_rdb
	GLOBAL	_rdc
	GLOBAL	_rdx
	GLOBAL	_rdy
	GLOBAL	_rdt
	GLOBAL	__x
	GLOBAL	__y
	GLOBAL	__c
	GLOBAL	__t
	GLOBAL	_cx1
	GLOBAL	_cx2
	GLOBAL	_cy1
	GLOBAL	_cy2
	GLOBAL	_at1
	GLOBAL	_at2
	GLOBAL	_ptx1
	GLOBAL	_ptx2
	GLOBAL	_pty1
	GLOBAL	_pty2
	GLOBAL	_pty2b
	GLOBAL	_denew
	GLOBAL	_gpint
	GLOBAL	_gen_pt
	GLOBAL	_map_pt
	GLOBAL	_str_pt
	GLOBAL	_n_pant
	GLOBAL	_o_pant
	GLOBAL	_map_pointer
	GLOBAL	_keys
	GLOBAL	_key_r
	GLOBAL	_key_g
	GLOBAL	_key_z
	GLOBAL	_key_1
	GLOBAL	_key_2
	GLOBAL	_key_3
	GLOBAL	_p_x
	GLOBAL	_p_y
	GLOBAL	_p_vx
	GLOBAL	_p_vy
	GLOBAL	_p_jmx
	GLOBAL	_p_jmy
	GLOBAL	_p_sal
	GLOBAL	_p_nu
	GLOBAL	_p_frame
	GLOBAL	_p_facing
	GLOBAL	_p_life
	GLOBAL	_p_score
	GLOBAL	_p_current_frame
	GLOBAL	_p_next_frame
	GLOBAL	_possee
	GLOBAL	__en_x
	GLOBAL	__en_y
	GLOBAL	_enoffsmasi
	GLOBAL	_enit
	GLOBAL	_en_an_frame
	GLOBAL	_en_an_count
	GLOBAL	_en_an_base_cell
	GLOBAL	_en_an_current_frame
	GLOBAL	_en_an_next_frame
	GLOBAL	_en_x
	GLOBAL	_en_y
	GLOBAL	_en_vx
	GLOBAL	_en_vy
	GLOBAL	__en_x1
	GLOBAL	__en_y1
	GLOBAL	__en_x2
	GLOBAL	__en_y2
	GLOBAL	__en_mx
	GLOBAL	__en_my
	GLOBAL	__en_t
	GLOBAL	__baddies_pointer
	GLOBAL	_blobs_v
	GLOBAL	_blobs_x
	GLOBAL	_blobs_y
	GLOBAL	_n_blobs
	GLOBAL	_hotspot_x
	GLOBAL	_hotspot_y
	GLOBAL	_orig_tile
	defc	_map_buffer	= 61697
	GLOBAL	_level_pointer
	GLOBAL	_yOsc
	GLOBAL	_f_win
	GLOBAL	_ovl_x
	GLOBAL	_ovl_y
	GLOBAL	_c_level_1_bin
	GLOBAL	_c_level_2_bin
	GLOBAL	_c_level_3_bin
	GLOBAL	_c_level_4_bin
	GLOBAL	_scr_mojon_twins_bin
	GLOBAL	_scr_ubhres_bin
	GLOBAL	_scr_sheet_bin
	GLOBAL	_scr_menu_bin
	GLOBAL	_scr_marcador_bin
	GLOBAL	_scr_final_bin
	GLOBAL	_SetRAMBank
	GLOBAL	_ISR
	GLOBAL	_arkos_init
	GLOBAL	_arkos_play_music
	GLOBAL	_play_sfx
	GLOBAL	_blackout_everything
	GLOBAL	_unpack
	GLOBAL	_draw_char
	GLOBAL	_draw_fast
	GLOBAL	_draw_char_by_char
	GLOBAL	_any_key
	GLOBAL	_fix_sprites
	GLOBAL	_espera_activa
	GLOBAL	_game
	GLOBAL	_name_level1
	GLOBAL	_name_level2
	GLOBAL	_name_level3
	GLOBAL	_name_level4
	GLOBAL	_pass1
	GLOBAL	_pass2
	GLOBAL	_pass3
	GLOBAL	_name_levels
	GLOBAL	_passes
	GLOBAL	_cad_level
	GLOBAL	_start_game_from
	GLOBAL	_password
	GLOBAL	_get_password
	GLOBAL	_menu
	GLOBAL	_supertiles
	GLOBAL	_tileset
	GLOBAL	_sprite_1_a
	GLOBAL	_sprite_1_b
	GLOBAL	_sprite_2_a
	GLOBAL	_sprite_2_b
	GLOBAL	_sprite_3_a
	GLOBAL	_sprite_3_b
	GLOBAL	_sprite_4_a
	GLOBAL	_sprite_4_b
	GLOBAL	_sprite_5_a
	GLOBAL	_sprite_5_b
	GLOBAL	_sprite_6_a
	GLOBAL	_sprite_6_b
	GLOBAL	_sprite_7_a
	GLOBAL	_sprite_7_b
	GLOBAL	_sprite_8_a
	GLOBAL	_sprite_8_b
	GLOBAL	_sprite_9_a
	GLOBAL	_sprite_9_b
	GLOBAL	_sprite_10_a
	GLOBAL	_sprite_10_b
	GLOBAL	_sprite_11_a
	GLOBAL	_sprite_11_b
	GLOBAL	_sprite_12_a
	GLOBAL	_sprite_12_b
	GLOBAL	_sprite_13_a
	GLOBAL	_sprite_13_b
	GLOBAL	_sprite_14_a
	GLOBAL	_sprite_14_b
	GLOBAL	_sprite_15_a
	GLOBAL	_sprite_15_b
	GLOBAL	_sprite_16_a
	GLOBAL	_sprite_16_b
	GLOBAL	_sprite_17_a
	GLOBAL	_sprite_17_b
	GLOBAL	_sprite_18_a
	GLOBAL	_sprite_18_b
	GLOBAL	_sprite_19_a
	GLOBAL	_sprite_19_b
	GLOBAL	_sprite_20_a
	GLOBAL	_sprite_20_b
	GLOBAL	_sprite_21_a
	GLOBAL	_sprite_21_b
	GLOBAL	_sprite_22_a
	GLOBAL	_sprite_22_b
	GLOBAL	_sprite_23_a
	GLOBAL	_sprite_23_b
	GLOBAL	_sprite_24_a
	GLOBAL	_sprite_24_b
	GLOBAL	_player_walk
	GLOBAL	_sprite_frames
	GLOBAL	_levels
	GLOBAL	_level_buffer
	GLOBAL	_malotes
	GLOBAL	_hotspots
	GLOBAL	_load_level
	GLOBAL	_invalidate_tile
	GLOBAL	_invalidate_viewport
	GLOBAL	_draw_coloured_tile
	GLOBAL	_render_screen
	GLOBAL	_tile_behaviour
	GLOBAL	_init_player
	GLOBAL	_draw_life
	GLOBAL	_draw_score
	GLOBAL	_cm_two_points
	GLOBAL	_player_bb
	GLOBAL	_move
	GLOBAL	_collide
	GLOBAL	_calc_baddies_pointer
	GLOBAL	_move_enemies
	GLOBAL	_init_hotspots
	GLOBAL	_muerte
	GLOBAL	_rand
	GLOBAL	_main


; --- End of Scope Defns ---


; --- End of Compilation ---
