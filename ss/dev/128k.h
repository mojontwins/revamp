
void SetRAMBank() {
#asm
	.SetRAMBank
			ld	BC, $7FFD
			out (C), A	
#endasm
}
