.model small
.stack 100h

.data
a db ?
b db ?
gcd db ?
lcm db ?
msg1 db "Enter First Digit: $"
msg2 db "Enter Second Digit: $"
msgResultGCD db "GCD: $"
msgResultLCM db "LCM: $"

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
    mov a, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, msg2
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov b, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    GCD_SECTION:
    mov al, a
    mov bl, b
    jmp GCD_CALC
    
    GCD_CALC:
    cmp al, bl
    je GCD_RESULT
    jl GCD_SWAP
    sub al, bl
    jmp GCD_CALC
    
    GCD_SWAP:
    xchg al, bl
    jmp GCD_CALC
    
    GCD_RESULT:
    mov gcd, al
    
    mov ah, 9
    lea dx, msgResultGCD
    int 21h
    
    mov ah, 2
    mov dl, gcd
    add dl, 48
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    jmp LCM_SECTION
    
    LCM_SECTION:
    mov al, a
    mov bl, b
    mul bl
    div gcd
    mov lcm, al
    
    mov ah, 9
    lea dx, msgResultLCM
    int 21h
    
    mov ah, 2
    mov dl, lcm
    add dl, 48
    int 21h
    
    EXIT:
    mov ah, 4ch
    main endp
end main
