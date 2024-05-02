.model small 

.stack 100h   

.data 

a db " Enter a number1: $"    

b db ?   

c db "Enter a number2:  $" 

d db ?   

 

e db "Enter a number3:  $" 

f db ?  

 

r db ? 

.code 

main proc  

    mov ax, @data 

    mov ds, ax 

                  

    mov ah, 9 ;Enter a number          

    lea dx,a     ;a 

    int 21h   ;Print a  

  

              

    mov ah,1 

    int 21h 

    sub al,48 

    mov b,al 

     

    mov ah,2 

    mov dl,010 

    int 21h 

    mov dl,13 

    int 21h  

     

    mov ah,9 ;Enter a number          

    lea dx,c     ;c 

    int 21h   ;Print a 

     

    mov ah,1 

    int 21h  

    sub al,48 

    mov d,al 

     

    mov ah,2 

    mov dl,010 

    int 21h 

    mov dl,13 

    int 21h  

     

    mov ah,9 ;Enter a number          

    lea dx,e     ;e 

    int 21h   ;Print a 

     

    mov ah,1 

    int 21h  

    sub al,48 

    mov f,al 

     

    mov ah,2 

    mov dl,010 

    int 21h 

    mov dl,13 

    int 21h 

     

    mov cl,b 

    add cl,d  

    add cl,f 

    ;add cl,48 

    mov r,cl  

     

     

    add r,48 

     

    mov ah,2 

    mov dl,r 

    int 21h 

     

    exit: 

    mov ah,4ch 

    main endp 

end main 