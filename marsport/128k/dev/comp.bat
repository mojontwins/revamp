@echo off
rem zcc +zx -vn %1.c -o %1.bin -lndos -lsplib2 -create-app -zorg=33280
zcc +zx -vn %1.c -o %1.bin -lndos -lsplib2 -create-app -zorg=32768