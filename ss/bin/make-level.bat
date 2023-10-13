@echo off
echo "Making level %1"
copy /b map%1.bin + enems%1.bin level%1.bin >nul
apack level%1.bin c-level%1.bin
echo "Done! import c-level%1.bin & done."
