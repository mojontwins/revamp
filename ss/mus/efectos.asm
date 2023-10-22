; [0] Caída del salto
EFECTO0:		DB  $51,$1A,$00
				DB  $E8,$1B,$00
				DB  $80,$2B,$00
				DB 	$FF   
				
; [1] Quitar vida
EFECTO1:		DB  $25,$1C,$00
				DB  $30,$2E,$00
				DB  $00,$00,$00
				DB  $A8,$0A,$00
				DB  $C5,$1A,$00
				DB  $00,$00,$00
				DB  $37,$1C,$00
				DB  $C5,$1C,$00
				DB  $00,$00,$00
				DB  $25,$18,$00
				DB  $30,$26,$00
				DB	$FF
				
; [2] Arrastrar en cinta
EFECTO2:		DB	$80,$2E,$00
				DB	$00,$0A,$04
				DB	$FF	
				
; [3] Coger tesoro
EFECTO3:		DB  $1F,$0B,$00
				DB  $1A,$0C,$00
				DB  $1F,$0D,$00
				DB  $16,$0E,$00
				DB  $1F,$0E,$00
				DB  $0D,$0D,$00
				DB  $1F,$0C,$00
				DB  $0D,$0B,$00
				DB  $00,$00,$00
				DB  $00,$00,$00
				DB  $1F,$08,$00
				DB  $1A,$09,$00
				DB  $1F,$0A,$00
				DB  $16,$0B,$00
				DB  $1F,$0B,$00
				DB  $0D,$0A,$00
				DB  $1F,$09,$00
				DB  $0D,$07,$00
				DB  $00,$00,$00
				DB  $00,$00,$00
				DB  $1F,$06,$00
				DB  $1A,$07,$00
				DB  $1F,$08,$00
				DB  $16,$08,$00
				DB  $1F,$07,$00
				DB  $0D,$06,$00
				DB  $1F,$05,$00
				DB	$FF
	
; [4] ?
EFECTO4:		DB	$00,$0C,$03
				DB	$FF
				
; [5] Coger vida
EFECTO5:		DB  $1A,$0E,$00
				DB  $1A,$0E,$00
				DB  $00,$00,$00
				DB  $1A,$0A,$00
				DB  $1A,$0A,$00
				DB  $00,$00,$00
				DB  $1A,$0C,$00
				DB  $1A,$0C,$00
				DB  $00,$00,$00
				DB  $1A,$08,$00
				DB  $1A,$08,$00
				DB	$FF
				
; [6] ?
EFECTO6:		DB  $E8,$1B,$00
				DB  $80,$2B,$00
				DB	$FF	
				
; [7] Salto largo
EFECTO7:		DB  $C3,$0E,$00
				DB  $CC,$0D,$00
				DB  $D5,$0A,$00
				DB  $DE,$06,$00
				DB  $35,$03,$00
				DB  $50,$0B,$00
				DB  $47,$0C,$00
				DB  $3E,$08,$00
				DB	$FF
				
; [8] Salto alto
EFECTO8:		DB  $58,$0D,$00
				DB  $50,$0B,$00
				DB  $47,$0A,$00
				DB  $3E,$06,$00
				DB  $35,$03,$00
				DB  $50,$09,$00
				DB  $47,$0A,$00
				DB  $3E,$07,$00
				DB	$FF	