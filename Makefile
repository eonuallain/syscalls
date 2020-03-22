all: helloworld

helloworld: helloworld.o
	ld helloworld.o -o helloworld


helloworld.o: helloworld.asm
	nasm -f elf64 helloworld.asm -o helloworld.o

.PHONY: clean

clean: 
	rm -f *.o helloworld