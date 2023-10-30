;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 18462-8d70c5a-20210624
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Mon Oct 30 12:14:34 2023


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
	C_LINE	12,"ss.c"
	C_LINE	20,"ss.c"
	C_LINE	0,"globals.h"
	C_LINE	4,"globals.h"
	C_LINE	6,"globals.h"
	C_LINE	7,"globals.h"
	C_LINE	9,"globals.h"
	C_LINE	12,"globals.h"
	C_LINE	14,"globals.h"
	C_LINE	15,"globals.h"
	SECTION	code_compiler

; Function my_malloc flags 0x00000200 __smallc 
; void * my_malloc(unsigned int bytes)
; parameter 'unsigned int bytes' at sp+2 size(2)
	C_LINE	15,"globals.h::my_malloc::0::0"
._my_malloc
	ld	hl,0	;const
	push	hl
	call	sp_BlockAlloc
	pop	bc
	ret


	C_LINE	16,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._u_malloc
	defw	_my_malloc + 0
	SECTION	code_compiler
	C_LINE	17,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._u_free
	defw	sp_FreeBlock + 0
	SECTION	code_compiler
	C_LINE	18,"globals.h::my_malloc::0::1"
	C_LINE	19,"globals.h::my_malloc::0::1"
	C_LINE	22,"globals.h::my_malloc::0::1"
	.vpClipStruct defb  1 ,  1  + 18,  1 ,  1  + 30
	.fsClipStruct defb 0, 24, 0, 32
	C_LINE	29,"globals.h::my_malloc::0::1"
	C_LINE	30,"globals.h::my_malloc::0::1"
	C_LINE	31,"globals.h::my_malloc::0::1"
	C_LINE	32,"globals.h::my_malloc::0::1"
	C_LINE	33,"globals.h::my_malloc::0::1"
	C_LINE	34,"globals.h::my_malloc::0::1"
	C_LINE	36,"globals.h::my_malloc::0::1"
._asm_number 
	defb 0
._asm_int
	defw 0
._asm_int_2
	defw 0
._seed	
	defw 0
	C_LINE	49,"globals.h::my_malloc::0::1"
	C_LINE	50,"globals.h::my_malloc::0::1"
	C_LINE	51,"globals.h::my_malloc::0::1"
	C_LINE	52,"globals.h::my_malloc::0::1"
	C_LINE	53,"globals.h::my_malloc::0::1"
	C_LINE	54,"globals.h::my_malloc::0::1"
	C_LINE	55,"globals.h::my_malloc::0::1"
	C_LINE	56,"globals.h::my_malloc::0::1"
	C_LINE	57,"globals.h::my_malloc::0::1"
	C_LINE	61,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._keys
	defw	383
	defw	479
	defw	735
	defw	509
	defw	507
	SECTION	code_compiler
	C_LINE	69,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_r
	defw	2299
	SECTION	code_compiler
	C_LINE	70,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_g
	defw	4349
	SECTION	code_compiler
	C_LINE	71,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_z
	defw	766
	SECTION	code_compiler
	C_LINE	73,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_1
	defw	503
	SECTION	code_compiler
	C_LINE	74,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_2
	defw	759
	SECTION	code_compiler
	C_LINE	75,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._key_3
	defw	1271
	SECTION	code_compiler
	C_LINE	79,"globals.h::my_malloc::0::1"
	C_LINE	80,"globals.h::my_malloc::0::1"
	C_LINE	81,"globals.h::my_malloc::0::1"
	C_LINE	82,"globals.h::my_malloc::0::1"
	C_LINE	83,"globals.h::my_malloc::0::1"
	C_LINE	84,"globals.h::my_malloc::0::1"
	C_LINE	85,"globals.h::my_malloc::0::1"
	C_LINE	86,"globals.h::my_malloc::0::1"
	C_LINE	88,"globals.h::my_malloc::0::1"
	C_LINE	90,"globals.h::my_malloc::0::1"
	C_LINE	91,"globals.h::my_malloc::0::1"
	C_LINE	92,"globals.h::my_malloc::0::1"
	C_LINE	94,"globals.h::my_malloc::0::1"
	C_LINE	95,"globals.h::my_malloc::0::1"
	C_LINE	96,"globals.h::my_malloc::0::1"
	C_LINE	97,"globals.h::my_malloc::0::1"
	C_LINE	98,"globals.h::my_malloc::0::1"
	C_LINE	99,"globals.h::my_malloc::0::1"
	C_LINE	100,"globals.h::my_malloc::0::1"
	C_LINE	101,"globals.h::my_malloc::0::1"
	C_LINE	103,"globals.h::my_malloc::0::1"
	C_LINE	104,"globals.h::my_malloc::0::1"
	C_LINE	105,"globals.h::my_malloc::0::1"
	C_LINE	107,"globals.h::my_malloc::0::1"
	C_LINE	109,"globals.h::my_malloc::0::1"
	C_LINE	110,"globals.h::my_malloc::0::1"
	C_LINE	111,"globals.h::my_malloc::0::1"
	C_LINE	112,"globals.h::my_malloc::0::1"
	C_LINE	113,"globals.h::my_malloc::0::1"
	C_LINE	114,"globals.h::my_malloc::0::1"
	SECTION	data_compiler
._yOsc
	defb	4
	SECTION	code_compiler
	C_LINE	116,"globals.h::my_malloc::0::1"
	C_LINE	118,"globals.h::my_malloc::0::1"
	C_LINE	28,"ss.c::my_malloc::0::1"
	C_LINE	0,"librarian.h::my_malloc::0::1"
	C_LINE	7,"librarian.h::my_malloc::0::1"
	C_LINE	12,"librarian.h::my_malloc::0::1"
	SECTION	data_compiler
._resources
	defb	3
	defw	49152
	defb	3
	defw	51111
	defb	3
	defw	53043
	defb	3
	defw	54969
	defb	3
	defw	56884
	defb	3
	defw	58087
	defb	3
	defw	59245
	defb	3
	defw	60335
	defb	3
	defw	61160
	defb	3
	defw	61650
	SECTION	code_compiler
	C_LINE	32,"ss.c::my_malloc::0::1"
	C_LINE	0,"printer.h::my_malloc::0::1"
	C_LINE	6,"printer.h::my_malloc::0::1"
	._letters
		BINARY "../bin/font.bin"
	._line_buffer
		defw $4000, $4020, $4040, $4060, $4080, $40A0, $40C0, $40E0
		defw $4800, $4820, $4840, $4860, $4880, $48A0, $48C0, $48E0
		defw $5000, $5020, $5040, $5060, $5080, $50A0, $50C0, $50E0
	C_LINE	18,"printer.h::my_malloc::0::1"

; Function draw_char flags 0x00000200 __smallc 
; void draw_char()
	C_LINE	18,"printer.h::draw_char::0::1"
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


	C_LINE	87,"printer.h::draw_char::0::2"

; Function draw_fast flags 0x00000200 __smallc 
; void draw_fast(unsigned char x, unsigned char y, unsigned char clr, unsigned char * s)
; parameter 'unsigned char * s' at sp+2 size(2)
; parameter 'unsigned char clr' at sp+4 size(1)
; parameter 'unsigned char y' at sp+6 size(1)
; parameter 'unsigned char x' at sp+8 size(1)
	C_LINE	87,"printer.h::draw_fast::0::2"
._draw_fast
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)
	ld	(__x),a
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)
	ld	(__y),a
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
.i_13
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(hl)
	and	a
	jp	z,i_14	;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	l,(hl)
	ld	h,0
	ld	bc,-32
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(__t),a
	call	_draw_char
	ld	de,(_gen_pt)
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	hl,(_gen_pt)
	inc	hl
	ld	(_gen_pt),hl
	pop	de
	pop	hl
	inc	hl
	push	hl
	push	de
	jp	i_13	;EOS
.i_14
	ret


	C_LINE	100,"printer.h::draw_fast::0::4"

; Function draw_char_by_char flags 0x00000200 __smallc 
; void draw_char_by_char(unsigned char x, unsigned char y, unsigned char * s)
; parameter 'unsigned char * s' at sp+2 size(2)
; parameter 'unsigned char y' at sp+4 size(1)
; parameter 'unsigned char x' at sp+6 size(1)
	C_LINE	100,"printer.h::draw_char_by_char::0::4"
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
.i_15
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(hl)
	and	a
	jp	z,i_16	;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(hl)
	ld	hl,_rdc
	ld	(hl),a
	cp	13
	jp	nz,i_17	;
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
	jp	i_18	;EOS
.i_17
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
	jp	i_21	;EOS
.i_19
	ld	hl,(_gpit)
	ld	h,0
	inc	hl
	inc	hl
	ld	h,0
	ld	a,l
	ld	(_gpit),a
.i_21
	ld	a,(_gpit)
	sub	8
	jp	nc,i_20	;
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
	jp	i_19	;EOS
.i_20
	ld	hl,(_gen_pt)
	inc	hl
	ld	(_gen_pt),hl
.i_18
	pop	de
	pop	hl
	inc	hl
	push	hl
	push	de
	jp	i_15	;EOS
.i_16
	ret


	C_LINE	130,"printer.h::draw_char_by_char::0::9"

; Function any_key flags 0x00000200 __smallc 
; unsigned char any_key()
	C_LINE	130,"printer.h::any_key::0::9"
._any_key
			ld  hl, 0
			xor a
			in  a, (0xfe)
			and 0x1f
			cp  0x1f		 
			ret z
			ld  l, 1
	ret


	C_LINE	144,"printer.h::any_key::0::10"

; Function fix_sprites flags 0x00000200 __smallc 
; void fix_sprites()
	C_LINE	144,"printer.h::fix_sprites::0::10"
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


	C_LINE	36,"ss.c::fix_sprites::0::11"
	C_LINE	0,"128k.h::fix_sprites::0::11"
	C_LINE	2,"128k.h::fix_sprites::0::11"

; Function SetRAMBank flags 0x00000200 __smallc 
; void SetRAMBank()
	C_LINE	2,"128k.h::SetRAMBank::0::11"
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


	C_LINE	37,"ss.c::SetRAMBank::0::12"
	C_LINE	0,"wyzplayer.h::SetRAMBank::0::12"
	C_LINE	22,"wyzplayer.h::SetRAMBank::0::12"
	defw 0	 
	C_LINE	28,"wyzplayer.h::SetRAMBank::0::12"

; Function ISR flags 0x00000200 __smallc 
; void ISR()
	C_LINE	28,"wyzplayer.h::ISR::0::12"
._ISR
			ld  a, (_player_on)
			or  a 
			ret z
			ld b, 1
			call SetRAMBank
			call  0xC000 
			ld b, 0
			call SetRAMBank			
			ld  hl, _isrc
			inc (hl)						
	ret


	C_LINE	46,"wyzplayer.h::ISR::0::13"

; Function wyz_init flags 0x00000200 __smallc 
; void wyz_init()
	C_LINE	46,"wyzplayer.h::wyz_init::0::13"
._wyz_init
			ld  b,1
			call SetRAMBank
			call  0xC018 	
			ld  b,0
			call SetRAMBank
	ret


	C_LINE	58,"wyzplayer.h::wyz_init::0::14"

; Function wyz_play_sound flags 0x00000208 __smallc __z88dk_fastcall 
; void wyz_play_sound(unsigned char fx_number)
; parameter 'unsigned char fx_number' at sp+2 size(1)
	C_LINE	58,"wyzplayer.h::wyz_play_sound::0::14"
._wyz_play_sound
	push	hl
		di
		ld b, 1
		call SetRAMBank
			; __FASTCALL__ -> fx_number is in l!
			ld  b, l
		call  0xC47E 
		ld b, 0
		call SetRAMBank
		ei
	pop	bc
	ret


	C_LINE	74,"wyzplayer.h::wyz_play_sound::0::15"

; Function wyz_play_music flags 0x00000208 __smallc __z88dk_fastcall 
; void wyz_play_music(unsigned char song_number)
; parameter 'unsigned char song_number' at sp+2 size(1)
	C_LINE	74,"wyzplayer.h::wyz_play_music::0::15"
._wyz_play_music
	push	hl
		di
		ld b, 1
		call SetRAMBank
			; __FASTCALL__ -> song_number is in l!
			ld  a, l
		call  0xC087 
		ld b, 0
		call SetRAMBank
		ei
	pop	hl
	push	hl
	ld	h,0
	ld	a,l
	ld	(_song_playing),a
	pop	bc
	ret


	C_LINE	91,"wyzplayer.h::wyz_play_music::0::16"

; Function wyz_stop_sound flags 0x00000200 __smallc 
; void wyz_stop_sound()
	C_LINE	91,"wyzplayer.h::wyz_stop_sound::0::16"
._wyz_stop_sound
		di
		ld b, 1
		call SetRAMBank
		call  0xC062 
		ld b, 0
		call SetRAMBank
		ei
	ret


	C_LINE	38,"ss.c::wyz_stop_sound::0::17"
	C_LINE	0,"aplib.h::wyz_stop_sound::0::17"
	C_LINE	2,"aplib.h::wyz_stop_sound::0::17"
; aPPack decompressor
; original source by dwedit
; very slightly adapted by utopian
; optimized by Metalbrain
;hl = source
;de = dest
.depack		ld	ixl,128
.apbranch1	ldi
.aploop0	ld	ixh,1		;LWM = 0
.aploop		call 	ap_getbit
		jr 	nc,apbranch1
		call 	ap_getbit
		jr 	nc,apbranch2
		ld 	b,0
		call 	ap_getbit
		jr 	nc,apbranch3
		ld	c,16		;get an offset
.apget4bits	call 	ap_getbit
		rl 	c
		jr	nc,apget4bits
		jr 	nz,apbranch4
		ld 	a,b
.apwritebyte	ld 	(de),a		;write a 0
		inc 	de
		jr	aploop0
.apbranch4	and	a
		ex 	de,hl 		;write a previous byte (1-15 away from dest)
		sbc 	hl,bc
		ld 	a,(hl)
		add	hl,bc
		ex 	de,hl
		jr	apwritebyte
.apbranch3	ld 	c,(hl)		;use 7 bit offset, length = 2 or 3
		inc 	hl
		rr 	c
		ret 	z		;if a zero is encountered here, it is EOF
		ld	a,2
		adc	a,b
		push 	hl
		ld	iyh,b
		ld	iyl,c
		ld 	h,d
		ld 	l,e
		sbc 	hl,bc
		ld 	c,a
		jr	ap_finishup2
.apbranch2	call 	ap_getgamma	;use a gamma code * 256 for offset, another gamma code for length
		dec 	c
		ld	a,c
		sub	ixh
		jr 	z,ap_r0_gamma		;if gamma code is 2, use old r0 offset,
		dec 	a
		;do I even need this code?
		;bc=bc*256+(hl), lazy 16bit way
		ld 	b,a
		ld 	c,(hl)
		inc 	hl
		ld	iyh,b
		ld	iyl,c
		push 	bc
		call 	ap_getgamma
		ex 	(sp),hl		;bc = len, hl=offs
		push 	de
		ex 	de,hl
		ld	a,4
		cp	d
		jr 	nc,apskip2
		inc 	bc
		or	a
.apskip2	ld 	hl,127
		sbc 	hl,de
		jr 	c,apskip3
		inc 	bc
		inc 	bc
.apskip3		pop 	hl		;bc = len, de = offs, hl=junk
		push 	hl
		or 	a
.ap_finishup	sbc 	hl,de
		pop 	de		;hl=dest-offs, bc=len, de = dest
.ap_finishup2	ldir
		pop 	hl
		ld	ixh,b
		jr 	aploop
.ap_r0_gamma	call 	ap_getgamma		;and a new gamma code for length
		push 	hl
		push 	de
		ex	de,hl
		ld	d,iyh
		ld	e,iyl
		jr 	ap_finishup
.ap_getbit	ld	a,ixl
		add	a,a
		ld	ixl,a
		ret	nz
		ld	a,(hl)
		inc	hl
		rla
		ld	ixl,a
		ret
.ap_getgamma	ld 	bc,1
.ap_getgammaloop	call 	ap_getbit
		rl 	c
		rl 	b
		call 	ap_getbit
		jr 	c,ap_getgammaloop
		ret
	C_LINE	126,"aplib.h::wyz_stop_sound::0::17"

; Function blackout_everything flags 0x00000208 __smallc __z88dk_fastcall 
; void blackout_everything()
	C_LINE	126,"aplib.h::blackout_everything::0::17"
._blackout_everything
	ld	hl,22528	;const
	push	hl
.i_22
	pop	de
	push	de
	ld	hl,23296	;const
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_23	;
	pop	de
	push	de
	xor	a
	ld	(de),a
	pop	hl
	inc	hl
	push	hl
	jp	i_22	;EOS
.i_23
	pop	bc
	ret


	C_LINE	136,"aplib.h::blackout_everything::0::19"

; Function get_resource flags 0x00000200 __smallc 
; void get_resource(unsigned char n, unsigned int destination)
; parameter 'unsigned int destination' at sp+2 size(2)
; parameter 'unsigned char n' at sp+4 size(1)
	C_LINE	136,"aplib.h::get_resource::0::19"
._get_resource
	ld	hl,_resources
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	ld	a,(hl)
	ld	(_ram_page),a
	ld	hl,_resources
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	call	l_gint	;
	ld	(_ram_address),hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(_ram_destination),hl
		di
		ld a, (_ram_page)
		ld b, a
		call SetRAMBank
		ld hl, (_ram_address)
		ld de, (_ram_destination)
		call depack
		ld b, 0
		call SetRAMBank
		ei
	ret


	C_LINE	39,"ss.c::get_resource::0::20"
	C_LINE	0,"menu.h::get_resource::0::20"
	C_LINE	1,"menu.h::get_resource::0::20"
	C_LINE	2,"menu.h::get_resource::0::20"
	C_LINE	13,"menu.h::get_resource::0::20"
	C_LINE	14,"menu.h::get_resource::0::20"
	C_LINE	15,"menu.h::get_resource::0::20"
	C_LINE	16,"menu.h::get_resource::0::20"
	C_LINE	18,"menu.h::get_resource::0::20"
	C_LINE	19,"menu.h::get_resource::0::20"
	C_LINE	20,"menu.h::get_resource::0::20"
	C_LINE	22,"menu.h::get_resource::0::20"
	SECTION	data_compiler
._name_levels
	defw	_name_level1 + 0
	defw	_name_level2 + 0
	defw	_name_level3 + 0
	defw	_name_level4 + 0
	SECTION	code_compiler
	C_LINE	23,"menu.h::get_resource::0::20"
	SECTION	data_compiler
._passes
	defw	_pass1 + 0
	defw	_pass2 + 0
	defw	_pass3 + 0
	SECTION	code_compiler
	C_LINE	25,"menu.h::get_resource::0::20"
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
	C_LINE	51,"menu.h::get_resource::0::20"
	SECTION	data_compiler
._cad_level
	defw	i_1+0
	SECTION	code_compiler
	C_LINE	53,"menu.h::get_resource::0::20"

; Function start_game_from flags 0x00000200 __smallc 
; void start_game_from(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	53,"menu.h::start_game_from::0::20"
._start_game_from
	call	_wyz_stop_sound
.i_27
	call	_blackout_everything
	ld	hl,7	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,1	;const
	call	_wyz_play_music
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
	jp	nc,i_29	;
	ld	hl,12	;const
	push	hl
	ld	hl,15	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+9
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	cp	2
	jp	nz,i_32	;
	ld	hl,11	;const
	jp	i_33	;
.i_32
	ld	hl,12	;const
.i_33
	ld	h,0
	push	hl
	ld	hl,16	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,_passes
	push	hl
	ld	hl,10	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	dec	hl
	add	hl,hl
	pop	de
	add	hl,de
	call	l_gint	;
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
.i_29
	ld	hl,250	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_wyz_stop_sound
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_game
	pop	bc
	ld	a,h
	or	l
	jp	z,i_34	;
	ld	hl,2	;const
	add	hl,sp
	inc	(hl)
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	cp	4
	jp	nz,i_35	;
.i_36
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_36	;EOS
.i_37
	call	_blackout_everything
	ld	hl,5	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,8	;const
	push	hl
	ld	hl,19	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,i_1+18
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,0	;const
	call	_wyz_play_music
	ld	hl,32767	;const
	push	hl
	call	_espera_activa
	pop	bc
	jp	i_28	;EOS
	defc	i_35 = i_38
	defc	i_34 = i_28
	jp	i_27	;EOS
	defc	i_38 = i_27
.i_28
	ret


	C_LINE	97,"menu.h::start_game_from::0::26"
	C_LINE	99,"menu.h::start_game_from::0::26"

; Function get_password flags 0x00000200 __smallc 
; unsigned char get_password()
	C_LINE	99,"menu.h::get_password::0::26"
._get_password
	call	_blackout_everything
	ld	hl,7	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,9	;const
	push	hl
	ld	hl,11	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+35
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
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
.i_39
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
	ld	h,0
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,_password
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	sp_GetKey
	ld	a,l
	ld	hl,_rdb
	ld	(hl),a
	cp	12
	jp	nz,i_42	;
	ld	hl,(_rda)
	ld	h,0
	xor	a
	sub	l
	jp	nc,i_42	;
	defc	i_42 = i_41
.i_43_i_42
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),32
	ld	hl,5	;const
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,i_1+50
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
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
.i_41
	ld	hl,(_rdb)
	ld	h,0
	ld	a,l
	cp	13
	jp	z,i_40	;EOS
.i_44
	ld	hl,(_rdb)
	ld	h,0
	ld	de,90
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_45	;
	ld	hl,(_rdb)
	ld	h,0
	ld	bc,-32
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_rdb),a
.i_45
	ld	hl,(_rdb)
	ld	h,0
	ld	de,65
	ex	de,hl
	call	l_uge
	jp	nc,i_47	;
	ld	a,(_rdb)
	cp	91
	jp	nc,i_47	;
	ld	a,(_rda)
	sub	20
	jp	nc,i_47	;
	defc	i_47 = i_46
.i_48_i_47
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
	jp	i_39	;EOS
	defc	i_46 = i_39
.i_40
	ld	de,_password
	ld	hl,(_rda)
	ld	h,0
	add	hl,de
	ld	(hl),0
	ld	hl,(_rda)
	ld	h,0
	xor	a
	sub	l
	jp	nc,i_49	;
	xor	a
	ld	(_gpjt),a
	jp	i_52	;EOS
.i_50
	ld	hl,_gpjt
	ld	a,(hl)
	inc	(hl)
.i_52
	ld	a,(_gpjt)
	sub	3
	jp	nc,i_51	;
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
	jp	i_55	;EOS
.i_53
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_55
	ld	de,(_gpit)
	ld	d,0
	ld	hl,(_rda)
	ld	h,d
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_54	;
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
	jp	c,i_54	;EOS
	jp	i_53	;EOS
	defc	i_56 = i_53
.i_54
	ld	de,(_gpit)
	ld	d,0
	ld	hl,(_rda)
	ld	h,d
	call	l_eq
	jp	nc,i_57	;
	ld	hl,(_gpjt)
	inc	l
	ld	h,0
	ret
	defc	i_57 = i_50
.i_51
.i_49
	ld	hl,0	;const
	ret


	C_LINE	155,"menu.h::get_password::0::36"

; Function menu flags 0x00000200 __smallc 
; void menu()
	C_LINE	155,"menu.h::menu::0::36"
._menu
	ld	hl,1	;const
	ld	a,l
	ld	(_denew),a
.i_58
.i_60
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_60	;EOS
.i_61
	ld	hl,(_denew)
	ld	a,l
	and	a
	jp	z,i_62	;
	call	_blackout_everything
	ld	hl,7	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,0	;const
	call	_wyz_play_music
	xor	a
	ld	(_denew),a
.i_62
	ld	hl,4	;const
	push	hl
	ld	hl,21	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,i_1+74
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,11	;const
	push	hl
	ld	hl,12	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+99
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,11	;const
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+110
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,11	;const
	push	hl
	ld	hl,14	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+121
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
.i_63
	ld	hl,(_key_1)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_65	;
	ld	hl,0	;const
	push	hl
	call	_start_game_from
	pop	bc
	ld	a,1
	ld	(_denew),a
	jp	i_64	;EOS
.i_65
	ld	hl,(_key_2)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_67	;
	call	_get_password
	push	hl
	call	_start_game_from
	pop	bc
	ld	a,1
	ld	(_denew),a
	jp	i_64	;EOS
.i_67
	ld	hl,(_key_3)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_69	;
.i_70
	call	_any_key
	ld	a,h
	or	l
	jp	nz,i_70	;EOS
.i_71
.i_72
	ld	hl,11	;const
	push	hl
	ld	hl,12	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+132
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,11	;const
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+143
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,11	;const
	push	hl
	ld	hl,14	;const
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+154
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,(_key_1)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_74	;
	ld	hl,sp_JoyKeyboard
	ld	(_joyfunc),hl
	jp	i_73	;EOS
.i_74
	ld	hl,(_key_2)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_76	;
	ld	hl,sp_JoySinclair1
	ld	(_joyfunc),hl
	jp	i_73	;EOS
.i_76
	ld	hl,(_key_3)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_78	;
	ld	hl,sp_JoyKempston
	ld	(_joyfunc),hl
	jp	i_73	;EOS
	defc	i_78 = i_72
	defc	i_77 = i_72
	defc	i_75 = i_72
	jp	i_64	;EOS
	defc	i_73 = i_64
	defc	i_69 = i_63
	defc	i_68 = i_63
	defc	i_66 = i_63
	jp	i_58	;EOS
	defc	i_64 = i_58
.i_59
	ret


	C_LINE	40,"ss.c::menu::0::47"
	C_LINE	0,"supertileset.h::menu::0::47"
	C_LINE	3,"supertileset.h::menu::0::47"
	C_LINE	5,"supertileset.h::menu::0::47"
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
	C_LINE	41,"ss.c::menu::0::47"
	C_LINE	0,"tileset.h::menu::0::47"
	C_LINE	4,"tileset.h::menu::0::47"
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
	C_LINE	42,"ss.c::menu::0::47"
	C_LINE	0,"spriteset.h::menu::0::47"
	C_LINE	6,"spriteset.h::menu::0::47"
	C_LINE	7,"spriteset.h::menu::0::47"
	C_LINE	8,"spriteset.h::menu::0::47"
	C_LINE	9,"spriteset.h::menu::0::47"
	C_LINE	10,"spriteset.h::menu::0::47"
	C_LINE	11,"spriteset.h::menu::0::47"
	C_LINE	12,"spriteset.h::menu::0::47"
	C_LINE	13,"spriteset.h::menu::0::47"
	C_LINE	14,"spriteset.h::menu::0::47"
	C_LINE	15,"spriteset.h::menu::0::47"
	C_LINE	16,"spriteset.h::menu::0::47"
	C_LINE	17,"spriteset.h::menu::0::47"
	C_LINE	18,"spriteset.h::menu::0::47"
	C_LINE	19,"spriteset.h::menu::0::47"
	C_LINE	20,"spriteset.h::menu::0::47"
	C_LINE	21,"spriteset.h::menu::0::47"
	C_LINE	22,"spriteset.h::menu::0::47"
	C_LINE	23,"spriteset.h::menu::0::47"
	C_LINE	24,"spriteset.h::menu::0::47"
	C_LINE	25,"spriteset.h::menu::0::47"
	C_LINE	26,"spriteset.h::menu::0::47"
	C_LINE	27,"spriteset.h::menu::0::47"
	C_LINE	28,"spriteset.h::menu::0::47"
	C_LINE	29,"spriteset.h::menu::0::47"
	C_LINE	30,"spriteset.h::menu::0::47"
	C_LINE	31,"spriteset.h::menu::0::47"
	C_LINE	32,"spriteset.h::menu::0::47"
	C_LINE	33,"spriteset.h::menu::0::47"
	C_LINE	34,"spriteset.h::menu::0::47"
	C_LINE	35,"spriteset.h::menu::0::47"
	C_LINE	36,"spriteset.h::menu::0::47"
	C_LINE	37,"spriteset.h::menu::0::47"
	C_LINE	38,"spriteset.h::menu::0::47"
	C_LINE	39,"spriteset.h::menu::0::47"
	C_LINE	40,"spriteset.h::menu::0::47"
	C_LINE	41,"spriteset.h::menu::0::47"
	C_LINE	42,"spriteset.h::menu::0::47"
	C_LINE	43,"spriteset.h::menu::0::47"
	C_LINE	44,"spriteset.h::menu::0::47"
	C_LINE	45,"spriteset.h::menu::0::47"
	C_LINE	46,"spriteset.h::menu::0::47"
	C_LINE	47,"spriteset.h::menu::0::47"
	C_LINE	48,"spriteset.h::menu::0::47"
	C_LINE	49,"spriteset.h::menu::0::47"
	C_LINE	50,"spriteset.h::menu::0::47"
	C_LINE	51,"spriteset.h::menu::0::47"
	C_LINE	52,"spriteset.h::menu::0::47"
	C_LINE	53,"spriteset.h::menu::0::47"
	C_LINE	55,"spriteset.h::menu::0::47"
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
	C_LINE	43,"ss.c::menu::0::47"
	C_LINE	45,"ss.c::menu::0::47"
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
	C_LINE	0,"overlay.h::menu::0::47"
	C_LINE	4,"overlay.h::menu::0::47"
	C_LINE	5,"overlay.h::menu::0::47"
	C_LINE	7,"overlay.h::menu::0::47"
._ovl_halo	defb	0, 0, 1, 1, 1, 1, 0, 0
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb	1, 5, 6, 6, 6, 6, 5, 1
			defb 	0, 1, 5, 5, 5, 5, 1, 0
			defb	0, 0, 1, 1, 1, 1, 0, 0
._ovl_x		defb 	0
._ovl_y		defb 	0			
._ovl_buff	defs	864, 0
	C_LINE	25,"overlay.h::menu::0::47"

; Function draw_overlay flags 0x00000200 __smallc 
; void draw_overlay(unsigned char x, unsigned char y)
; parameter 'unsigned char y' at sp+2 size(1)
; parameter 'unsigned char x' at sp+4 size(1)
	C_LINE	25,"overlay.h::draw_overlay::0::47"
._draw_overlay
	ld	de,_ovl_x
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	de,_ovl_y
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	l,a
	ld	h,0
		call _ovl_draw_scr
	ret


	C_LINE	35,"overlay.h::draw_overlay::0::48"

; Function del_overlay flags 0x00000200 __smallc 
; void del_overlay(unsigned char x, unsigned char y)
; parameter 'unsigned char y' at sp+2 size(1)
; parameter 'unsigned char x' at sp+4 size(1)
	C_LINE	35,"overlay.h::del_overlay::0::48"
._del_overlay
	ld	de,_ovl_x
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	de,_ovl_y
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	l,a
	ld	h,0
		call _ovl_del
	ret


	C_LINE	45,"overlay.h::del_overlay::0::49"

; Function draw_buff flags 0x00000200 __smallc 
; void draw_buff()
	C_LINE	45,"overlay.h::draw_buff::0::49"
._draw_buff
	._ovl_draw_buff
			; hl => ovl_buff + 36 * 3 + 3 = ovl_buff + 111
			ld	hl, _ovl_buff + 111
			ld	b, 18
			; de => 22528 + 32 + 1 = 22561
			ld 	de, 22561
	._ovldbl
			push bc
			; Copy 30 attrs
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
			ldi
			; Next line
			inc	de
			inc de
			ld	bc, 6
			add	hl, bc
			pop	bc
			djnz _ovldbl
	ret


	C_LINE	102,"overlay.h::draw_buff::0::50"
._ovl_draw_scr
			; First we calculate the address
			; address = ovl_buff + ovl_y * 36 + ovl_x
			ld 	a, (_ovl_y)
			ld	h, 0
			ld	l, a
			add	hl, hl				; hl = ovl_y * 2
			add	hl, hl				; hl = ovl_y * 4
			push hl
			add hl, hl				; hl = ovl_y * 8
			add	hl, hl				; hl = ovl_y * 16
			add	hl, hl				; hl = ovl_y * 32
			pop	bc
			add	hl, bc				; hl = ovl_y * 36
			ld	a, (_ovl_x)
			ld	d, 0
			ld	e, a
			add	hl, de				; hl = ovl_y * 36 + ovl_x
			ld	de, _ovl_buff
			add	hl, de				; hl = _ovl_buff + ovl_y * 32 + ovl_x
			ld	de, _ovl_halo				
			ex	de, hl
			; DE -> buffer, HL -> ovl_halo
			; Start the tint. 8x8 lines, unrolled.
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ex	de, hl
			ld	bc, 28
			add	hl, bc
			ex	de, hl
			ret
._ovl_del
			; First we calculate the address
			; address = ovl_buff + ovl_y * 36 + ovl_x
			ld 	a, (_ovl_y)
			ld	h, 0
			ld	l, a
			add	hl, hl				; hl = ovl_y * 2
			add	hl, hl				; hl = ovl_y * 4
			push hl
			add hl, hl				; hl = ovl_y * 8
			add	hl, hl				; hl = ovl_y * 16
			add	hl, hl				; hl = ovl_y * 32
			pop	bc
			add	hl, bc				; hl = ovl_y * 36
			ld	a, (_ovl_x)
			ld	d, 0
			ld	e, a
			add	hl, de				; hl = ovl_y * 36 + ovl_x
			ld	de, _ovl_buff
			add	hl, de				; hl = _ovl_buff + ovl_y * 32 + ovl_x
			xor	a
			; Start the tint. 8x8 lines, unrolled.
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ld	bc, 29
			add	hl, bc
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			inc	hl
			ld	(hl), a
			ret
	C_LINE	52,"ss.c::draw_buff::0::50"
	C_LINE	0,"leveldata.h::draw_buff::0::50"
	C_LINE	3,"leveldata.h::draw_buff::0::50"
	C_LINE	13,"leveldata.h::draw_buff::0::50"
	SECTION	data_compiler
._levels
	defb	2
	defb	3
	defb	3
	defb	2
	defb	128
	defb	16
	defb	4
	defb	0
	defb	4
	defb	0
	defb	2
	defb	16
	defb	112
	defb	0
	defb	1
	defb	4
	defb	0
	defb	1
	defb	128
	defb	48
	defb	4
	defb	3
	defb	4
	defb	0
	defb	0
	defb	128
	defb	0
	defb	0
	SECTION	code_compiler
	C_LINE	53,"ss.c::draw_buff::0::50"
	C_LINE	0,"levelstruct.h::draw_buff::0::50"
	C_LINE	16,"levelstruct.h::draw_buff::0::50"
	C_LINE	23,"levelstruct.h::draw_buff::0::50"
	C_LINE	29,"levelstruct.h::draw_buff::0::50"
	C_LINE	30,"levelstruct.h::draw_buff::0::50"
	._level_buffer defs 3375
	C_LINE	36,"levelstruct.h::draw_buff::0::50"
	C_LINE	37,"levelstruct.h::draw_buff::0::50"
	._malotes defs 25*3*9 	 
	C_LINE	43,"levelstruct.h::draw_buff::0::50"
	C_LINE	44,"levelstruct.h::draw_buff::0::50"
	._hotspots defs 25*3 	 
	C_LINE	52,"levelstruct.h::draw_buff::0::50"
	._level_pointer	
		defw	0
	C_LINE	59,"levelstruct.h::draw_buff::0::50"

; Function load_level flags 0x00000200 __smallc 
; void load_level(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	59,"levelstruct.h::load_level::0::50"
._load_level
	ld	hl,_levels
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	add	hl,hl
	add	hl,bc
	pop	de
	add	hl,de
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,_level_buffer
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,_levels
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	add	hl,hl
	add	hl,bc
	pop	de
	add	hl,de
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
	ret


	C_LINE	64,"levelstruct.h::load_level::0::51"

; Function invalidate_tile flags 0x00000200 __smallc 
; void invalidate_tile()
	C_LINE	64,"levelstruct.h::invalidate_tile::0::51"
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


	C_LINE	89,"levelstruct.h::invalidate_tile::0::52"

; Function invalidate_viewport flags 0x00000200 __smallc 
; void invalidate_viewport()
	C_LINE	89,"levelstruct.h::invalidate_viewport::0::52"
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


	C_LINE	110,"levelstruct.h::invalidate_viewport::0::53"

; Function draw_coloured_tile flags 0x00000200 __smallc 
; void draw_coloured_tile()
	C_LINE	110,"levelstruct.h::draw_coloured_tile::0::53"
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


	C_LINE	184,"levelstruct.h::draw_coloured_tile::0::54"

; Function render_screen flags 0x00000200 __smallc 
; void render_screen()
	C_LINE	184,"levelstruct.h::render_screen::0::54"
._render_screen
	xor	a
	ld	(_n_blobs),a
	ld	a,1
	ld	(__x),a
	ld	a,1
	ld	(__y),a
	ld	hl,_level_buffer
	push	hl
	ld	hl,(_n_pant)
	ld	h,0
	ld	de,135
	call	l_mult
	pop	de
	add	hl,de
	ld	(_map_pt),hl
			ld  b, 135 
			ld  de, _map_buffer 
			ld  hl, (_map_pt) 
		.draw_map_loop
			push bc 
			ld  a, (hl)
			ld  (de), a 
			inc hl
			inc de 
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
	jp	i_84	;EOS
.i_82
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_84
	ld	a,(_gpit)
	sub	3
	jp	nc,i_83	;
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
	jp	z,i_85	;
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
	jp	i_82	;EOS
	defc	i_85 = i_82
.i_83
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
	jp	nz,i_87	;
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
	jp	z,i_87	;
	defc	i_87 = i_86
.i_88_i_87
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
.i_86
	call	_invalidate_viewport
	ret


	C_LINE	317,"levelstruct.h::render_screen::0::58"
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
	C_LINE	54,"ss.c::render_screen::0::58"
	C_LINE	0,"engine.h::render_screen::0::58"
	C_LINE	5,"engine.h::render_screen::0::58"

; Function espera_activa flags 0x00000200 __smallc 
; void espera_activa(int espera)
; parameter 'int espera' at sp+2 size(2)
	C_LINE	5,"engine.h::espera_activa::0::58"
._espera_activa
	call	_any_key
	ld	h,0
	ld	a,l
	ld	(_gpit),a
.i_90
	pop	de
	pop	hl
	dec	hl
	push	hl
	push	de
	inc	hl
	ld	a,h
	or	l
	jp	z,i_91	;
			halt
	call	_any_key
	ld	a,l
	ld	hl,_gpjt
	ld	(hl),a
	and	a
	jp	z,i_93	;
	ld	a,(_gpit)
	and	a
	jp	nz,i_93	;
	defc	i_93 = i_92
	jp	i_91	;EOS
	defc	i_94_i_93 = i_91
.i_92
	ld	hl,(_gpjt)
	ld	a,l
	ld	(_gpit),a
	jp	i_90	;EOS
.i_91
	ret


	C_LINE	25,"engine.h::espera_activa::0::61"

; Function init_player flags 0x00000208 __smallc __z88dk_fastcall 
; void init_player(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	25,"engine.h::init_player::0::61"
._init_player
	push	hl
			ld  a, l 				 
			ld  b, a  				 
			sla a  					
			ld  c, a 				 
			sla a  					 
			add b 
			add a 
			ld  b, 0
			ld  c, a 
			ld  ix, _levels
			add ix, bc 
			ld  a, (ix + 4) 		 
			ld  (_p_x), a 
			ld  a, (ix + 5) 		 
			ld  (_p_y), a 
			ld  a, (ix + 6) 		 
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


	C_LINE	67,"engine.h::init_player::0::62"

; Function draw_life flags 0x00000200 __smallc 
; void draw_life()
	C_LINE	67,"engine.h::draw_life::0::62"
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


	C_LINE	109,"engine.h::draw_life::0::63"

; Function draw_score flags 0x00000200 __smallc 
; void draw_score()
	C_LINE	109,"engine.h::draw_score::0::63"
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


	C_LINE	141,"engine.h::draw_score::0::64"

; Function cm_two_points flags 0x00000200 __smallc 
; unsigned char cm_two_points()
	C_LINE	141,"engine.h::cm_two_points::0::64"
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
			cp  10
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


	C_LINE	220,"engine.h::cm_two_points::0::65"

; Function player_bb flags 0x00000200 __smallc 
; void player_bb()
	C_LINE	220,"engine.h::player_bb::0::65"
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


	C_LINE	271,"engine.h::player_bb::0::66"

; Function move flags 0x00000200 __smallc 
; void move()
	C_LINE	271,"engine.h::move::0::66"
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
			jr  z, p_evil_done
			ld  hl, 1 
			call _wyz_play_sound
			ld  hl, _p_life 
			dec (hl)
			call _draw_life		
		.p_evil_done
	ld	a,(_p_sal)
	and	a
	jp	nz,i_95	;
	ld	a,8
	ld	(_p_vy),a
	jp	i_96	;EOS
.i_95
	ld	a,(_p_nu)
	sub	8
	jp	nc,i_97	;
	ld	hl,_p_jmy
	call	l_gchar
	call	l_neg
	ld	a,l
	call	l_sxt
	ld	a,l
	ld	(_p_vy),a
	jp	i_98	;EOS
.i_97
	ld	hl,_p_jmy
	call	l_gchar
	ld	a,l
	ld	(_p_vy),a
.i_98
.i_96
	ld	hl,(_p_y)
	ld	h,0
	push	hl
	ld	hl,_p_vy
	call	l_gchar
	pop	de
	add	hl,de
	ld	h,0
	ld	a,l
	ld	(_p_y),a
	call	_player_bb
	xor	a
	ld	(_possee),a
	ld	a,(_ptx1)
	ld	(_cx1),a
	ld	a,(_ptx2)
	ld	(_cx2),a
	ld	a,(_p_sal)
	and	a
	jp	z,i_100	;
	ld	hl,(_p_y)
	ld	h,0
	ld	a,15
	and	l
	ld	l,a
	jr	nz,ASMPC+3
	scf
	jp	nc,i_100	;
	defc	i_100 = i_99
.i_101_i_100
	ld	hl,(_pty2b)
	ld	a,l
	ld	(_cy2),a
	ld	(_cy1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	12
	jp	nz,i_103	;
	ld	a,(_at2)
	and	12
	jp	z,i_102	;
.i_103
	xor	a
	ld	(_p_sal),a
	ld	hl,0	;const
	ld	a,l
	ld	(_p_vy),a
.i_102
.i_99
	ld	hl,_p_vy
	call	l_gchar
	ld	de,0
	ex	de,hl
	call	l_gt
	jp	nc,i_105	;
	ld	hl,(_pty2)
	ld	a,l
	ld	(_cy2),a
	ld	(_cy1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	12
	jp	nz,i_107	;
	ld	a,(_at2)
	and	12
	jp	z,i_106	;
.i_107
	ld	hl,(_p_y)
	ld	h,0
	ld	a,240
	and	l
	ld	l,a
	ld	(_p_y),a
	xor	a
	ld	(_p_vy),a
	ld	(_p_sal),a
	ld	a,1
	ld	(_possee),a
	jp	i_109	;EOS
	defc	i_106 = i_109
.i_105
	ld	hl,_p_vy
	ld	a,(hl)
	rla
	jp	nc,i_110	;
	ld	hl,(_pty1)
	ld	a,l
	ld	(_cy2),a
	ld	(_cy1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	8
	jp	nz,i_112	;
	ld	a,(_at2)
	and	8
	jp	z,i_111	;
.i_112
	ld	hl,(_p_y)
	ld	h,0
	ld	a,240
	and	l
	ld	l,a
	ld	bc,16
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_p_y),a
.i_111
.i_110
.i_109
	xor	a
	ld	(_p_vx),a
	ld	a,(_p_sal)
	and	a
	jp	nz,i_114	;
	ld	a,(_possee)
	and	a
	jp	z,i_115	;
	ld	hl,(_gpit)
	ld	h,0
	ld	a,4
	and	l
	ld	l,a
	jr	nz,ASMPC+3
	scf
	jp	nc,i_116	;
	ld	a,254
	ld	(_p_vx),a
	ld	a,4
	ld	(_p_facing),a
.i_116
	ld	hl,(_gpit)
	ld	h,0
	ld	a,8
	and	l
	ld	l,a
	jr	nz,ASMPC+3
	scf
	jp	nc,i_117	;
	ld	a,2
	ld	(_p_vx),a
	xor	a
	ld	(_p_facing),a
.i_117
	ld	a,(_p_vx)
	and	a
	jp	z,i_118	;
	ld	hl,_p_frame
	ld	a,(hl)
	inc	(hl)
	ld	a,(_p_frame)
	cp	4
	jp	nz,i_119	;
	ld	hl,0	;const
	ld	a,l
	ld	(_p_frame),a
.i_119
.i_118
	call	_player_bb
	ld	hl,(_pty2b)
	ld	a,l
	ld	(_cy2),a
	ld	(_cy1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	16
	jp	nz,i_121	;
	ld	a,(_at2)
	and	16
	jp	z,i_120	;
.i_121
	ld	hl,_p_vx
	call	l_gchar
	dec	hl
	ld	a,l
	ld	(_p_vx),a
	inc	hl
.i_120
	ld	a,(_at1)
	and	32
	jp	nz,i_124	;
	ld	a,(_at2)
	and	32
	jp	z,i_123	;
.i_124
	ld	hl,_p_vx
	call	l_gchar
	inc	hl
	ld	a,l
	ld	(_p_vx),a
	jp	i_126	;EOS
	defc	i_123 = i_126
	defc	i_115 = i_126
.i_114
	ld	a,(_p_facing)
	and	a
	jp	z,i_127	;
	ld	hl,_p_jmx
	call	l_gchar
	call	l_neg
	ld	a,l
	call	l_sxt
	ld	a,l
	ld	(_p_vx),a
	jp	i_128	;EOS
.i_127
	ld	hl,_p_jmx
	call	l_gchar
	ld	a,l
	ld	(_p_vx),a
.i_128
.i_126
	ld	hl,(_p_x)
	ld	h,0
	push	hl
	ld	hl,_p_vx
	call	l_gchar
	pop	de
	add	hl,de
	ld	h,0
	ld	a,l
	ld	(_p_x),a
	call	_player_bb
	ld	a,(_pty1)
	ld	(_cy1),a
	ld	a,(_pty2)
	ld	(_cy2),a
	ld	hl,_p_vx
	call	l_gchar
	ld	de,0
	ex	de,hl
	call	l_gt
	jp	nc,i_129	;
	ld	hl,(_ptx2)
	ld	a,l
	ld	(_cx2),a
	ld	(_cx1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	8
	jp	nz,i_131	;
	ld	a,(_at2)
	and	8
	jp	z,i_130	;
.i_131
	ld	hl,(_p_x)
	ld	h,0
	ld	a,240
	and	l
	ld	l,a
	ld	(_p_x),a
	jp	i_133	;EOS
	defc	i_130 = i_133
.i_129
	ld	hl,_p_vx
	ld	a,(hl)
	rla
	jp	nc,i_134	;
	ld	hl,(_ptx1)
	ld	a,l
	ld	(_cx2),a
	ld	(_cx1),a
	call	_cm_two_points
	ld	a,(_at1)
	and	8
	jp	nz,i_136	;
	ld	a,(_at2)
	and	8
	jp	z,i_135	;
.i_136
	ld	hl,(_p_x)
	ld	h,0
	ld	a,240
	and	l
	ld	l,a
	ld	bc,16
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_p_x),a
.i_135
.i_134
.i_133
	ld	a,(_p_sal)
	and	a
	jp	z,i_138	;
	ld	hl,_p_nu
	ld	a,(hl)
	inc	(hl)
	ld	a,(_p_nu)
	cp	16
	jp	nz,i_139	;
	xor	a
	ld	(_p_sal),a
	jp	i_140	;EOS
	defc	i_139 = i_140
.i_138
	ld	a,(_possee)
	and	a
	jp	z,i_141	;
	xor	a
	ld	(_p_nu),a
	ld	hl,(_gpit)
	ld	h,0
	ld	a,1
	and	l
	ld	l,a
	jr	nz,ASMPC+3
	scf
	jp	nc,i_142	;
	ld	a,2
	ld	(_p_jmx),a
	ld	a,4
	ld	(_p_jmy),a
	ld	a,1
	ld	(_p_sal),a
	jp	i_143	;EOS
.i_142
	ld	hl,(_gpit)
	ld	h,0
	ld	a,2
	and	l
	ld	l,a
	jr	nz,ASMPC+3
	scf
	jp	nc,i_144	;
	ld	a,4
	ld	(_p_jmx),a
	ld	a,2
	ld	(_p_jmy),a
	ld	hl,1	;const
	ld	a,l
	ld	(_p_sal),a
.i_144
.i_143
.i_141
.i_140
	ld	a,(_possee)
	and	a
	jp	z,i_145	;
	ld	a,(_p_facing)
	and	a
	jp	z,i_146	;
	ld	a,(_p_frame)
	and	a
	jp	z,i_148	;
	ld	a,(_p_frame)
	cp	2
	jp	nz,i_147	;
.i_148
	ld	hl,_sprite_5_a
	ld	(_p_next_frame),hl
	jp	i_150	;EOS
.i_147
	ld	a,(_p_frame)
	cp	1
	jp	nz,i_151	;
	ld	hl,_sprite_6_a
	ld	(_p_next_frame),hl
	jp	i_152	;EOS
.i_151
	ld	hl,_sprite_7_a
	ld	(_p_next_frame),hl
	jp	i_153	;EOS
	defc	i_152 = i_153
	defc	i_150 = i_153
.i_146
	ld	a,(_p_frame)
	and	a
	jp	z,i_155	;
	ld	a,(_p_frame)
	cp	2
	jp	nz,i_154	;
.i_155
	ld	hl,_sprite_1_a
	ld	(_p_next_frame),hl
	jp	i_157	;EOS
.i_154
	ld	a,(_p_frame)
	cp	1
	jp	nz,i_158	;
	ld	hl,_sprite_2_a
	ld	(_p_next_frame),hl
	jp	i_159	;EOS
.i_158
	ld	hl,_sprite_3_a
	ld	(_p_next_frame),hl
	jp	i_160	;EOS
	defc	i_159 = i_160
	defc	i_157 = i_160
	defc	i_153 = i_160
.i_145
	ld	a,(_p_facing)
	and	a
	jp	z,i_161	;
	ld	hl,_sprite_8_a
	ld	(_p_next_frame),hl
	jp	i_162	;EOS
.i_161
	ld	hl,_sprite_4_a
	ld	(_p_next_frame),hl
.i_162
.i_160
	ret


	C_LINE	492,"engine.h::move::0::107"

; Function collide flags 0x00000200 __smallc 
; unsigned char collide()
	C_LINE	492,"engine.h::collide::0::107"
._collide
			ld  hl, 0
			ld  a, (_rdx)
			ld  c, a 
			ld  a, (_p_x)
			add  8 
			cp  c
			ret c 
			ld  a, (_p_x)
			ld  c, a 
			ld  a, (_rdx)
			add  8 
			cp  c 
			ret c
			ld  a, (_rdy)
			ld  c, a 
			ld  a, (_p_y)
			add  8 
			cp  c
			ret c 
			ld  a, (_p_y)
			ld  c, a 
			ld  a, (_rdy)
			add  8 
			cp  c 
			ret c
			ld  l, 1
	ret


	C_LINE	535,"engine.h::collide::0::108"

; Function calc_baddies_pointer flags 0x00000200 __smallc 
; void calc_baddies_pointer()
	C_LINE	535,"engine.h::calc_baddies_pointer::0::108"
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


	C_LINE	555,"engine.h::calc_baddies_pointer::0::109"

; Function move_enemies flags 0x00000200 __smallc 
; void move_enemies()
	C_LINE	555,"engine.h::move_enemies::0::109"
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
			ld	hl, 1
			call _wyz_play_sound
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


	C_LINE	803,"engine.h::move_enemies::0::110"

; Function init_hotspots flags 0x00000200 __smallc 
; void init_hotspots()
	C_LINE	803,"engine.h::init_hotspots::0::110"
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


	C_LINE	821,"engine.h::init_hotspots::0::111"

; Function muerte flags 0x00000200 __smallc 
; void muerte(unsigned char a, unsigned char b)
; parameter 'unsigned char b' at sp+2 size(1)
; parameter 'unsigned char a' at sp+4 size(1)
	C_LINE	821,"engine.h::muerte::0::111"
._muerte
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	ld	(_rda),a
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	ld	(_rdb),a
	ld	hl,0	;const
	ld	a,l
	ld	(_rdc),a
	call	sp_UpdateNow
	ld	hl,3	;const
	call	_wyz_play_sound
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
			ld  hl, 1
			call _wyz_play_sound
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


	C_LINE	913,"engine.h::muerte::0::112"

; Function rand flags 0x00000200 __smallc 
; unsigned char rand()
	C_LINE	913,"engine.h::rand::0::112"
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


	C_LINE	957,"engine.h::rand::0::113"

; Function game flags 0x00000200 __smallc 
; unsigned char game(unsigned char level)
; parameter 'unsigned char level' at sp+2 size(1)
	C_LINE	957,"engine.h::game::0::113"
._game
	ld	hl,_levels
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	add	hl,hl
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,_levels
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	b,h
	ld	c,l
	add	hl,bc
	add	hl,bc
	add	hl,hl
	add	hl,bc
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	inc	hl
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
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_load_level
	pop	bc
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	call	_init_player
	call	_init_hotspots
	call	sp_UpdateNow
	call	_blackout_everything
	ld	hl,8	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	call	_draw_life
	call	_draw_score
	ld	a,255
	ld	(_o_pant),a
	ld	hl,0	;const
	ld	a,l
	ld	(_f_gameover),a
	ld	a,l
	ld	(_f_win),a
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	inc	hl
	inc	hl
	ld	h,0
	call	_wyz_play_music
	ld	hl,0	;const
	ld	a,l
	ld	(_half_life),a
	ld	(_fc),a
.i_163
	ld	a,(_f_win)
	and	a
	jp	nz,i_165	;
	ld	a,(_f_gameover)
	and	a
	jp	nz,i_165	;
	ld	hl,0	;const
	jr	i_166
.i_165
	ld	hl,1	;const
.i_166
	call	l_lneg
	jp	nc,i_164	;
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_o_pant)
	ld	h,d
	call	l_ne
	jp	nc,i_167	;
	call	_render_screen
	ld	hl,(_n_pant)
	ld	h,0
	ld	a,l
	ld	(_o_pant),a
.i_167
	call	_move
	call	_move_enemies
	call	_rand
	ld	a,l
	and	15
	ld	hl,_gpit
	ld	(hl),a
	ld	e,(hl)
	ld	d,0
	ld	hl,(_n_blobs)
	ld	h,d
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_168	;
	ld	de,_blobs_v
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	push	hl
	ld	de,_blobs_v
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	e,(hl)
	ld	d,0
	ld	hl,1	;const
	and	a
	sbc	hl,de
	pop	de
	ld	a,l
	ld	(de),a
	ld	de,_blobs_x
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	a,(hl)
	ld	(__x),a
	ld	de,_blobs_y
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	a,(hl)
	ld	(__y),a
	ld	de,_blobs_v
	ld	hl,(_gpit)
	ld	h,0
	add	hl,de
	ld	l,(hl)
	ld	h,0
	ld	bc,45
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(__t),a
	call	_draw_coloured_tile
	call	_invalidate_tile
.i_168
	ld	a,(_hotspot_x)
	ld	(_rdx),a
	ld	hl,(_hotspot_y)
	ld	h,0
	ld	a,l
	ld	(_rdy),a
	call	_collide
	ld	a,h
	or	l
	jp	z,i_169	;
	ld	hl,(_hotspot_x)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	inc	hl
	ld	a,l
	ld	(__x),a
	ld	hl,(_hotspot_y)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	inc	hl
	ld	a,l
	ld	(__y),a
	ld	hl,(_orig_tile)
	ld	h,0
	ld	a,l
	ld	(__t),a
	call	_draw_coloured_tile
	call	_invalidate_tile
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
	ld	a,(hl)
	cp	1
	jp	nz,i_170	;
	ld	hl,_p_score
	ld	a,(hl)
	inc	(hl)
	ld	l,a
	ld	h,0
	call	_draw_score
	ld	hl,3	;const
	call	_wyz_play_sound
	jp	i_171	;EOS
.i_170
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
	cp	2
	jp	nz,i_172	;
	ld	hl,(_p_life)
	ld	h,0
	ld	a,223
	sub	l
	jp	nc,i_173	;
	ld	hl,255	;const
	jp	i_174	;
.i_173
	ld	hl,(_p_life)
	ld	h,0
	ld	bc,32
	add	hl,bc
.i_174
	ld	h,0
	ld	a,l
	ld	(_p_life),a
	call	_draw_life
	ld	hl,5	;const
	call	_wyz_play_sound
.i_172
.i_171
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
	ld	(hl),0
.i_169
	ld	hl,(_key_z)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jp	z,i_175	;
	ld	hl,_p_score
	ld	a,(hl)
	inc	(hl)
	ld	l,a
	ld	h,0
	call	_draw_score
	ld	hl,3	;const
	call	_wyz_play_sound
.i_175
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
	jp	i_178	;EOS
.i_176
	ld	hl,_enit
	ld	a,(hl)
	inc	(hl)
.i_178
	ld	a,(_enit)
	sub	3
	jp	nc,i_177	;
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
	jp	z,i_179	;
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
	jp	i_180	;EOS
.i_179
	ld	hl,240	;const
	ld	a,l
	ld	(__en_x),a
.i_180
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
	jp	i_176	;EOS
.i_177
	ld	a,(_half_life)
	xor	1
	ld	l,a
	ld	h,0
	ld	(_half_life),a
	ld	hl,_fc
	ld	a,(hl)
	inc	(hl)
	ld	a,(_fc)
	cp	8
	jp	nz,i_181	;
	xor	a
	ld	(_fc),a
.i_181
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_o_pant)
	ld	h,d
	call	l_eq
	jp	nc,i_182	;
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_yOsc)
	ld	h,d
	call	l_uge
	ld	h,0
	ld	a,l
	ld	(_attrs_byte),a
	call	sp_UpdateNow
.i_182
	ld	de,(_n_pant)
	ld	d,0
	ld	hl,(_yOsc)
	ld	h,d
	call	l_uge
	jp	nc,i_183	;
	ld	hl,(_p_x)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	push	hl
	ld	hl,(_p_y)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	push	hl
	call	_draw_overlay
	pop	bc
	pop	bc
	call	_draw_buff
	ld	hl,(_p_x)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	push	hl
	ld	hl,(_p_y)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	and	31
	ld	l,a
	push	hl
	call	_del_overlay
	pop	bc
	pop	bc
.i_183
	ld	a,(_p_life)
	and	a
	jp	z,i_185	;
	ld	hl,(_key_g)
	push	hl
	call	sp_KeyPressed
	pop	bc
	ld	a,h
	or	l
	jr	z,i_186
.i_185
	ld	hl,1	;const
.i_186
	ld	a,h
	or	l
	jp	z,i_184	;
	call	_wyz_stop_sound
	ld	hl,2	;const
	push	hl
	ld	hl,16	;const
	push	hl
	call	_muerte
	pop	bc
	pop	bc
	ld	a,1
	ld	(_f_gameover),a
.i_184
	ld	hl,(_p_score)
	ld	h,0
	ld	a,l
	cp	15
	jp	nz,i_187	;
	call	_wyz_stop_sound
	ld	a,1
	ld	(_f_win),a
.i_187
	ld	a,(_p_x)
	and	a
	jp	nz,i_189	;
	ld	hl,_p_vx
	ld	a,(hl)
	rla
	jp	nc,i_189	;
	defc	i_189 = i_188
.i_190_i_189
	ld	a,224
	ld	(_p_x),a
	ld	hl,_n_pant
	ld	a,(hl)
	dec	(hl)
.i_188
	ld	a,(_p_x)
	cp	224
	jp	nz,i_192	;
	ld	hl,_p_vx
	call	l_gchar
	ld	de,0
	ex	de,hl
	call	l_gt
	jp	nc,i_192	;
	defc	i_192 = i_191
.i_193_i_192
	xor	a
	ld	(_p_x),a
	ld	hl,_n_pant
	ld	a,(hl)
	inc	(hl)
.i_191
	ld	a,(_p_y)
	and	a
	jp	z,i_195	;
	ld	hl,(_p_y)
	ld	a,240
	sub	l
	jp	nc,i_197	;
.i_195
	ld	hl,_p_vy
	ld	a,(hl)
	rla
	jp	nc,i_197	;
	defc	i_197 = i_194
.i_198_i_197
	ld	a,128
	ld	(_p_y),a
	ld	hl,(_n_pant)
	ld	h,0
	ld	bc,-5
	add	hl,bc
	ld	h,0
	ld	a,l
	ld	(_n_pant),a
.i_194
	ld	hl,(_p_y)
	ld	h,0
	ld	a,l
	sub	128
	ccf
	jp	nc,i_200	;
	ld	hl,_p_vy
	call	l_gchar
	ld	de,0
	ex	de,hl
	call	l_gt
	jp	nc,i_200	;
	defc	i_200 = i_199
.i_201_i_200
	xor	a
	ld	(_p_y),a
	ld	hl,(_n_pant)
	ld	h,0
	ld	bc,5
	add	hl,bc
	ld	a,l
	ld	(_n_pant),a
	jp	i_163	;EOS
	defc	i_199 = i_163
.i_164
	ld	hl,(_f_win)
	ld	h,0
	ret


	C_LINE	55,"ss.c::game::0::132"
	C_LINE	59,"ss.c::game::0::132"

; Function main flags 0x00000000 __stdc 
; void main()
	C_LINE	59,"ss.c::main::0::133"
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
	jp	i_204	;EOS
.i_202
	ld	hl,_gpit
	ld	a,(hl)
	inc	(hl)
.i_204
	ld	a,(_gpit)
	sub	3
	jp	nc,i_203	;
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
	jp	i_202	;EOS
.i_203
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
	ld	hl,1	;const
	ld	a,l
	ld	(_player_on),a
	call	_wyz_init
		ei
	call	_blackout_everything
	ld	hl,9	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,8	;const
	call	_wyz_play_sound
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	hl,4	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,7	;const
	call	_wyz_play_sound
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	hl,6	;const
	push	hl
	ld	hl,16384	;const
	push	hl
	call	_get_resource
	pop	bc
	pop	bc
	ld	hl,5	;const
	call	_wyz_play_sound
	ld	hl,1000	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_blackout_everything
	ld	hl,10	;const
	push	hl
	push	hl
	ld	hl,70	;const
	push	hl
	ld	hl,i_1+165
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,9	;const
	push	hl
	ld	hl,12	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,i_1+178
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,8	;const
	push	hl
	ld	hl,13	;const
	push	hl
	ld	hl,71	;const
	push	hl
	ld	hl,i_1+193
	push	hl
	call	_draw_fast
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	hl,6	;const
	call	_wyz_play_sound
	ld	hl,150	;const
	push	hl
	call	_espera_activa
	pop	bc
	call	_menu
	ret


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
._rdm	defs	1
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
._fc	defs	1
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
._f_gameover	defs	1
._isrc	defs	1
._player_on	defs	1
._song_playing	defs	1
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
	GLOBAL	_rdm
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
	GLOBAL	_fc
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
	GLOBAL	_f_gameover
	GLOBAL	_isrc
	GLOBAL	_player_on
	GLOBAL	_song_playing
	GLOBAL	_resources
	GLOBAL	_draw_char
	GLOBAL	_draw_fast
	GLOBAL	_draw_char_by_char
	GLOBAL	_any_key
	GLOBAL	_fix_sprites
	GLOBAL	_SetRAMBank
	GLOBAL	_ISR
	GLOBAL	_wyz_init
	GLOBAL	_wyz_play_sound
	GLOBAL	_wyz_play_music
	GLOBAL	_wyz_stop_sound
	GLOBAL	_blackout_everything
	GLOBAL	_get_resource
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
	GLOBAL	_sprite_frames
	GLOBAL	_ovl_x
	GLOBAL	_ovl_y
	GLOBAL	_draw_overlay
	GLOBAL	_del_overlay
	GLOBAL	_draw_buff
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
