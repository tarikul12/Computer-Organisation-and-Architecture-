.model small
.stack 100h

.data
    msg db 13, 10, "Enter three numbers: $"
    max_msg db 13, 10, "The maximum number is: $"
    num1 db ?
    num2 db ?
    num3 db ?
    max_num db ?
    newline db 13, 10, '$'

.code
main proc
    mov ax, @data      
    mov ds, ax         
    
   
    mov ah, 9          
    lea dx, msg        
    int 21h            
    
    
    mov ah, 1          
    int 21h            
    sub al, '0'        
    mov num1, al       
    
   
    int 21h            
    sub al, '0'      
    mov num2, al       
    
    
    int 21h            
    sub al, '0'        
    mov num3, al       
    
    
    mov al, num1       
    cmp al, num2       
    jge check_num3    
    mov al, num2       
    
    check_num3:
    cmp al, num3       
    jge max_found      
    mov al, num3       
    
    max_found:
    
    mov max_num, al    
    
    
    mov ah, 9         
    lea dx, max_msg    
    int 21h           
    
 
    mov dl, max_num    
    add dl, '0'        
    mov ah, 2         
    int 21h            
    
    
    mov dx, offset newline
    mov ah, 9
    int 21h

    
    mov ah, 4Ch        
    int 21h            

main endp
end main
