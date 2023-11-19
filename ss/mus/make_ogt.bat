@echo off

set base=0xF000
set basesfx=0xFD00

if [%1]==[justassemble] goto :assemble

echo Convirtiendo . . .
..\utils\AKSToBIN.exe -a %base% "02 - Severin Sewers - Level 1_02.aks" 00_level1.bin 
..\utils\AKSToBIN.exe -a %base% "blank.aks" 06_blank.bin 
..\utils\AKSToBIN.exe -s -a %basesfx% sfx.aks sfx.bin

echo Comprimiendo . . .
..\utils\apack.exe 00_level1.bin 00_level1_c.bin > nul
..\utils\apack.exe 06_blank.bin 06_blank_c.bin > nul
..\utils\apack.exe sfx.bin sfx_c.bin > nul

:assemble
echo Ensamblando . . .
..\utils\pasmo.exe atPlayer.speccy.asm RAM1.bin RAM1.map.txt
