.MODEL SMALL

.stack 100H

.DATA                                                   
                                                        

    a     DB  ?                                       
    b     DB  0AH,0DH, 'Enter a Number: ','$'               
    c     DB  0AH,0DH, ' Not a PRIME','$'          
    d     DB  0AH,0DH, ' Is a PRIME','$'              

    .CODE                                               

MAIN:

    MOV AX,@DATA                                        
    MOV DS,AX                                           

    LEA DX,b                                          
    MOV AH,09H                                          
    INT 21H                                             

    MOV AH,01H                                          
    INT 21H                                             
    SUB AL,30H                                          
    MOV a,AL                                         

    MOV AH,00                                           

    MOV CL,2                                            
    DIV CL                                              
    MOV CL,AL                                           

Loop1:

    MOV AH,00                                           
    MOV AL,a                                         
    DIV CL                                              
    CMP AH,00                                           
    JZ Loop2                                             
    DEC CL                                              
    CMP CL,1                                            
    JNE Loop1                                            
    JMP Loop3                                            

Loop2:

    MOV AH,09H                                          
    LEA DX,b                                          
    INT 21H                                             
    JMP EXIT                                            

Loop3:

    MOV AH,09H                                          
    LEA DX,d                                          
    INT 21H                                             

EXIT:

    MOV AH,4CH                                          
    INT 21H                                             

    END MAIN                                           

