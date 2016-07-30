mem:	mem.o
	gcc -o mem mem.o

mem.o:	mem.c
	gcc -c -g -O2 mem.c

clean:
	rm -f *.o mem

assembler:
	rm -f *.s
	gcc -O2 -S -fverbose-asm mem.c
