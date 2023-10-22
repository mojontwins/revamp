@echo off
if [%1]==[tape] goto tape
if [%1]==[noassets] goto compile

echo Rebuilding assets

..\utils\png2scr ..\gfx\marcador.png ..\gfx\ram3-marcador.scr > nul
..\utils\png2scr ..\gfx\logo.png ..\gfx\ram3-mojon-twins.scr > nul
..\utils\png2scr ..\gfx\menu.png ..\gfx\ram3-menu.scr > nul
..\utils\png2scr ..\gfx\final.png ..\gfx\ram3-final.scr > nul
..\utils\png2scr ..\gfx\sheet.png ..\gfx\ram3-sheet.scr > nul

cd ..\gfx
for %%F in (*.scr) do ..\utils\apack.exe %%F ..\bin\%%~nF.bin > nul

..\utils\ts2bin.exe font.png notiles ..\bin\font.bin noattrs > nul

cd ..\dev

:compile

echo Compiling

..\utils\librarian2.exe list=..\bin\list.txt index=librarian.h bins_prefix=..\bin\ rams_prefix=..\bin\ > nul
zcc +zx -vn -m ss.c -O3 -crt0=crt.asm -o ss.bin -lsplib2_wan.lib -zorg=24000 > nul

:tape

echo Building tape

..\utils\png2scr ..\gfx\screen.png ..\bin\scr.bin > nul
del ..\bin\scrc.bin > nul 2> nul
..\utils\zx7.exe ..\bin\scr.bin ..\bin\scrc.bin > nul

del ..\bin\ram1c.bin > nul 2> nul
..\utils\zx7.exe ..\bin\ram1.bin ..\bin\ram1c.bin > nul

del ..\bin\ssc.bin > nul 2> nul
..\utils\zx7.exe ss.bin ..\bin\ssc.bin > nul

..\utils\imanol.exe ^
    in=loader\loaderzx.asm-orig ^
    out=loader\loader.asm ^
    loadingcomplength=?..\bin\scrc.bin ^
    ram1_length=?..\bin\ram1c.bin ^
    ram3_length=?..\bin\ram3.bin ^
    mb_length=?..\bin\ssc.bin > nul

..\utils\pasmo.exe loader\loader.asm ..\bin\loader.bin loader.txt > nul

..\utils\GenTape.exe mojon_twins--severin-sewers.tap ^
    basic 'SEVERIN' 10 ..\bin\loader.bin ^
    data              ..\bin\scrc.bin ^
    data              ..\bin\ram1c.bin ^
    data              ..\bin\ram3.bin ^
    data              ..\bin\ssc.bin  > nul

:fin

echo Done!
