### Build and Run the code from within the container

cd /code
nasm -f elf helloworld.asm
ld -m elf_i386 -s -o helloworld helloworld.o
./helloworld