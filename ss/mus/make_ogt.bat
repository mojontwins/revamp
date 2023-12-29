@echo off

set base=0xF000
set basesfx=0xFD00

if [%1]==[justassemble] goto :assemble

echo Convirtiendo . . .
..\utils\AKSToBIN.exe -a %base% "level1.aks" 00_level1.bin 
..\utils\AKSToBIN.exe -a %base% "level2.aks" 01_level2.bin 
..\utils\AKSToBIN.exe -a %base% "level3.aks" 02_level3.bin 
..\utils\AKSToBIN.exe -a %base% "level4.aks" 03_level4.bin 
..\utils\AKSToBIN.exe -a %base% "ganga_intro.aks" 04_ganga_intro.bin 
..\utils\AKSToBIN.exe -a %base% "money.aks" 05_money.bin 
..\utils\AKSToBIN.exe -a %base% "blank.aks" 06_blank.bin 
..\utils\AKSToBIN.exe -s -a %basesfx% sfx.aks sfx.bin

echo Comprimiendo . . .
..\utils\apack.exe 00_level1.bin 00_level1_c.bin > nul
..\utils\apack.exe 01_level2.bin 01_level2_c.bin > nul
..\utils\apack.exe 02_level3.bin 02_level3_c.bin > nul
..\utils\apack.exe 03_level4.bin 03_level4_c.bin > nul
..\utils\apack.exe 04_ganga_intro.bin 04_ganga_intro_c.bin > nul
..\utils\apack.exe 05_money.bin 05_money_c.bin > nul
..\utils\apack.exe 06_blank.bin 06_blank_c.bin > nul
..\utils\apack.exe sfx.bin sfx_c.bin > nul

:assemble
echo Ensamblando . . .
..\utils\pasmo.exe atPlayer.speccy.asm RAM1.bin RAM1.map.txt
