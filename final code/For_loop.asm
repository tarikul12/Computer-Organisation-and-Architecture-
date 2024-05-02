For Loop

.model small
.stack 100h

.data
i db '1'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cl, i      ;For Loop Initialization Statement
    FOR:
    cmp cl, '6'    ;For Loop Condition Checker
    jl LOOP_BODY   ;For Loop COndition
    jmp EXIT_FOR
    
    LOOP_BODY:
    mov ah, 2
    mov dl, cl
    int 21h
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    inc cl         ;For Loop Counter Increment
    jmp FOR
    
    EXIT_FOR:
    mov ah, 4ch
    main endp
end main
