@echo off
echo ===================
echo Generando page0.bin
echo ===================

apack menu.scr menu.bin
apack marcador.scr marcador.bin
apack final.scr final.bin

copy final.bin /b + marcador.bin /b + menu.bin /b page0.bin

echo.
echo ===================
echo Generando page1.bin
echo ===================

cd ..\mus
pasmo wyzplayer.asm wyzplayer.bin wyzplayer.sym
copy wyzplayer.bin ..\binaries\page1.bin
cd ..\binaries



echo.
echo ===================
echo Generando page3.bin
echo ===================

apack introcomic-1.scr introcomic-1.bin
apack introcomic-2.scr introcomic-2.bin
apack introcomic-3.scr introcomic-3.bin
apack mojon-twins.scr mojon-twins.bin
apack ubhres.scr ubhres.bin

copy map.bin /b + introcomic-1.bin /b + introcomic-2.bin /b + introcomic-3.bin /b + mojon-twins.bin /b + ubhres.bin /b page3.bin /b

echo.
echo **** OK ****

echo Cargar:
echo page0.bin a partir de 27643 en RAM BAJA
echo page1.bin a partir de 49152 en RAM1
echo page3.bin a partir de 49152 en RAM3

