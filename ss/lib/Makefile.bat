@echo off

cd cwrapper
copy ..\SPconfig.def .
rem gencompile "zcc +zx -vn -make-lib -I.." sp_c.lst
gencompile "zcc +zx -vn -c -I.." sp_c.lst
del SPconfig.def
cd ..

:onlyasm
rem z80asm -I. -d -ns -nm -Mo -DFORzx -xsplib2_mk2 @sp.lst
z80asm -I. -d  -DFORzx -xsplib2_wan @sp.lst

goto end

:install

:end