; loader.asm
; loads the loader
; by na_th_an - Thanks to Antonio Villena for his tutorials and utilities.

	org $5ccb
	ld  sp, $5dbf
	di
	db	$de, $c0, $37, $0e, $8f, $39, $96 ;OVER USR 7 ($5ccb)
	
	call blackout

preload:
; load screen
	scf
	ld	a, $ff
	ld	ix, 65536 - 575
	ld	de, 575
	call $0556
	di

; Decompress
	ld  hl, 65536 - 575
	ld  de, 16384
	call depack	

load:
; load screen
	scf
	ld	a, $ff
	ld	ix, 65536 - 2467
	ld	de, 2467
	call $0556
	di

	call blackout

; Decompress
	ld  hl, 65536 - 2467
	ld  de, 16384
	call depack	

mainbin:
; Main binary
	scf
	ld	a, $ff
	ld	ix, 65536 - 23611
	ld	de, 23611
	call $0556
	di

; Decompress
	ld  hl, 65536 - 23611
	ld  de, 24000
	call depack	

ram1:
; Detect if it's a 128K model to load RAM1.
	ld  bc, 0x7ffd
	xor a
	out (c), a
	ld  a, (0x1)
	ld  h, a
	ld  a, 0x10
	out (c), a
	ld  a, (0x1)
	cp  h
	jr  z, launch_exe

; RAM1
	ld	a, $11 		; ROM 1, RAM 1
	ld	bc, $7ffd
	out (C), a

	scf
	ld	a, $ff
	ld	ix, $c000
	ld	de, 5058
	call $0556
	di

	ld	a, $10 		; ROM 1, RAM 0
	ld	bc, $7ffd
	out (C), a
	
; run game!
launch_exe:
	jp 24000

blackout:
	; screen 0
	ld  bc, 767
	ld	hl, $5800
	ld	de, $5801
	ld	(hl), l
	ldir
	ret
	
; -----------------------------------------------------------------------------
; ZX7 decoder by Einar Saukas, Antonio Villena & Metalbrain
; "Standard" version (69 bytes only)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

depack:
dzx7_standard:
		ld      a, $80
dzx7s_copy_byte_loop:
		ldi                             ; copy literal byte
dzx7s_main_loop:
		call    dzx7s_next_bit
		jr      nc, dzx7s_copy_byte_loop ; next bit indicates either literal or sequence

; determine number of bits used for length (Elias gamma coding)
		push    de
		ld      bc, 0
		ld      d, b
dzx7s_len_size_loop:
		inc     d
		call    dzx7s_next_bit
		jr      nc, dzx7s_len_size_loop

; determine length
dzx7s_len_value_loop:
		call    nc, dzx7s_next_bit
		rl      c
		rl      b
		jr      c, dzx7s_exit           ; check end marker
		dec     d
		jr      nz, dzx7s_len_value_loop
		inc     bc                      ; adjust length

; determine offset
		ld      e, (hl)                 ; load offset flag (1 bit) + offset value (7 bits)
		inc     hl
		defb    $cb, $33                ; opcode for undocumented instruction "SLL E" aka "SLS E"
		jr      nc, dzx7s_offset_end    ; if offset flag is set, load 4 extra bits
		ld      d, $10                  ; bit marker to load 4 bits
dzx7s_rld_next_bit:
		call    dzx7s_next_bit
		rl      d                       ; insert next bit into D
		jr      nc, dzx7s_rld_next_bit  ; repeat 4 times, until bit marker is out
		inc     d                       ; add 128 to DE
		srl	d			; retrieve fourth bit from D
dzx7s_offset_end:
		rr      e                       ; insert fourth bit into E

; copy previous sequence
		ex      (sp), hl                ; store source, restore destination
		push    hl                      ; store destination
		sbc     hl, de                  ; HL = destination - offset - 1
		pop     de                      ; DE = destination
		ldir
dzx7s_exit:
		pop     hl                      ; restore source address (compressed data)
		jr      nc, dzx7s_main_loop
dzx7s_next_bit:
		add     a, a                    ; check next bit
		ret     nz                      ; no more bits left?
		ld      a, (hl)                 ; load another group of 8 bits
		inc     hl
		rla
		ret
