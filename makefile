#makefile for alive.asm
alive: alive.o
	gcc -o alive alive.o -no-pie
alive.o: alive.asm
	nasm -f elf64 -g -F dwarf alive.asm -l alive.lst
