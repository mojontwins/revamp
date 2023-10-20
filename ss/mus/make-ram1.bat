@echo off
for %%f in (*.mus) do ..\utils\apack.exe %%f %%f.bin 
..\utils\pasmo WYZproPlay47aZXc.ASM ram1.bin ram1.txt
