.model small
.stack 100h
 
.data
f db 3
r db 1
 
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cl, f
    mov al, r
    loop:
    mul cl
    dec cl
    jnz loop
    mov ah, 2
    mov dl, al
    add dl, 48
    int 21h
    exit:
    mov ah, 4ch
    main endp
end main
