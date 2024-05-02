.model small
.stack 100h

.data
    num db 3       
    
.code
main proc
    mov ax, @data  
    mov ds, ax     
    
    mov al, num    
    shl al, 1      
    
    
    mov ah, 02h    
    add al, '0'    
    mov dl, al     
    int 21h        
    
    
    mov ah, 4Ch    
    int 21h        
    
main endp
end main

