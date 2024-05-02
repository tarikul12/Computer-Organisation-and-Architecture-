.model small
.stack 100h

.data
    id db 32       
    divisor db 3   
    quotient db ?  
    remainder db ? 

.code
main proc
    mov ax, @data  
    mov ds, ax     
    
    
    mov al, id     
    and al, 0FH    
    mov bl, id     
    shr bl, 4      
    
    
    mov ah, al     
    mov al, bl     
    mov cl, 10     
    mul cl         
    
   
    mov dl, al     
    mov cl, divisor 
    div cl        
    
    
    mov quotient, al
    mov remainder, ah
    
    
    mov ah, 02h    
    add quotient, '0' 
    mov dl, quotient 
    int 21h        
    
    mov dl, ','    
    int 21h
    
    add remainder, '0' 
    mov dl, remainder 
    int 21h        
    
    
    mov ah, 4Ch    
    int 21h        
    
main endp
end main
