#Do-while loop

.model small
.stack 100h

.data


.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cl, '1'
    
    DO:
    mov ah, 2
    mov dl, cl
    int 21h
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    inc cl
    
    WHILE:
    cmp cl, '6'
    jl DO
    jge EXIT_DO_WHILE
    
    EXIT_DO_WHILE:
    mov ah, 4ch
    main endp
end main
