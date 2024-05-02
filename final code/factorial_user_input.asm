.model small
.stack 100h

.data
f db ?
r db 1
result db ?
msg1 db "Enter Factorial Number: $"
msg2 db "factorial: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov f, al
    
    mov cl, f
    mov al, r
    
    loop:
    mul cl
    dec cl
    jnz loop
    mov result, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov al, 9
    lea dx, msg2
    int 21h
    
    mov al, 2
    mov dl, result
    add dl, 48
    int 21h
    
    exit:
    mov ah, 4ch
    main endp
end main
