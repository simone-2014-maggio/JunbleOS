[BITS 16]
[ORG 0x7C00]

start:
    mov ax, 0x10
    mov ds, ax
    mov es, ax

    mov si, hello_msg
print_char:
    lodsb
    cmp al, 0
    je halt
    mov ah, 0x0E
    int 0x10
    jmp print_char

hello_msg db 'Booting JunbleOS...', 0

halt:
    cli
    hlt

times 510-($-$$) db 0
dw 0xAA55
