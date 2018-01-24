set board=afro_nfet
"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avrassembler\avrasm2.exe" -fI -o %board%.hex -e %board%.eeprom -D%board%_esc tgy.asm
avrdude -c stk500v2 -b 9600 -P COM7 -u -p m8 -U flash:w:%board%.hex:i
pause