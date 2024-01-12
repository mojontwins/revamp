@echo off

cd cwrapper
copy ..\SPconfig.def .
gencompile "zcc +zx -vn -make-lib -I.." sp_c.lst
del SPconfig.def
cd ..

:onlyasm
z80asm -I. -d -ns -nm -Mo -DFORzx -xsplib2_wan_old @sp.lst

goto end

:install

:end