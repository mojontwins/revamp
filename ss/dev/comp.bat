@echo off
if [%1]==[tape] goto tape

..\utils\librarian2.exe list=..\bin\list.txt index=librarian.h bins_prefix=..\bin\ rams_prefix=..\bin\ > nul

zcc +zx -vn -m ss.c -O3 -crt0=crt.asm -o ss.bin -lsplib2_wan.lib -zorg=24000 > nul

:tape

..\utils\png2scr ..\gfx\screen.png ..\bin\scr.bin
del ..\bin\scrc.bin > nul 2> nul
..\utils\zx7.exe ..\bin\scr.bin ..\bin\scrc.bin

del ..\bin\ram1c.bin > nul 2> nul
..\utils\zx7.exe ..\bin\ram1.bin ..\bin\ram1c.bin

del ..\bin\ssc.bin > nul 2> nul
..\utils\zx7.exe ss.bin ..\bin\ssc.bin

..\utils\imanol.exe ^
    in=loader\loaderzx.asm-orig ^
    out=loader\loader.asm ^
    loadingcomplength=?..\bin\scrc.bin ^
    ram1_length=?..\bin\ram1c.bin ^
    ram3_length=?..\bin\ram3.bin ^
    mb_length=?..\bin\ssc.bin

..\utils\pasmo.exe loader\loader.asm ..\bin\loader.bin loader.txt

..\utils\GenTape.exe mojon_twins--severin-sewers.tap ^
    basic 'SEVERIN' 10 ..\bin\loader.bin ^
    data              ..\bin\scrc.bin ^
    data              ..\bin\ram1c.bin ^
    data              ..\bin\ram3.bin ^
    data              ..\bin\ssc.bin 
