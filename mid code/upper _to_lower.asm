.model small 

.stack 100h 

.data 

input_msg db "Enter a  Uppercase letter: $" 

output_msg db 0dh, 0ah, "lowercase equivalent: $" 

char db ? 

.code 

main proc 

    mov ax, @data 

    mov ds, ax 

  

    

    mov ah, 9          ;    2222 

    lea dx, input_msg 

    int 21h 

  

    

    mov ah, 1 

    int 21h 

    mov bl, al 

  

     

    cmp bl, 'A' 

    jb not_lowercase 

    cmp bl, 'B' 

    ja not_lowercase 

  

   

    add bl, 32 

  

not_lowercase: 

    mov ah, 9 

    lea dx, output_msg 

    int 21h 

  

     

    mov dl, bl 

    mov ah, 2 

    int 21h 

  

     

    mov ah, 4ch 

    int 21h 

main endp 

end main 