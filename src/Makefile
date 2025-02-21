all: os-image

os-image: boot/bootloader.bin kernel/kernel.bin
    cat $^ > os-image

boot/bootloader.bin: boot/boot.asm
    nasm -f bin $< -o $@

kernel/kernel.bin: kernel/kernel.c
    i686-elf-gcc -ffreestanding -c $< -o $@

clean:
    rm -f boot/bootloader.bin kernel/kernel.bin os-image
