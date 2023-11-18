@echo off
echo ===================
echo Generando page0.bin
echo ===================

apack menu.scr menu.bin
apack marcador.scr marcador.bin
apack final.scr final.bin
apack mojon-twins.scr mojon-twins.bin

copy music.bin /b + sonidos.bin /b + mojon-twins.bin /b + final.bin /b + marcador.bin /b + menu.bin /b page0.bin

echo.
echo **** OK ****

echo Cargar:
echo page0.bin a partir de 26448