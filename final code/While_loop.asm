#While loop

.model small
.stack 100h

.data


.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cl, '1'
    
    WHILE:
    cmp cl, '6'
    jl LOOP_BODY
    jge EXIT_WHILE
    
    LOOP_BODY:
    mov ah, 2
    mov dl, cl
    int 21h
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    inc cl
    jmp WHILE
    
    EXIT_WHILE:
    mov ah, 4ch
    main endp
end main
