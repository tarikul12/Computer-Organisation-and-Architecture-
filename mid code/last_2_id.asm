.model small 
.stack 100h 
.data 
a db "id: 20-42312-1$" 
b db 12 
c db "Final Output: $" 
d db "last 2 digits : 12$" 
e db "Ascii of last 2 digits:12$" 
.code 
main proc 
 mov ax, @data 
 mov ds, ax 
 
 mov ah, 9 
 lea dx, a 
 int 21h
 
 mov ah, 2 
 mov dl, 10 
 int 21h 
 
 mov ah, 2 
 mov dl, 13 
 int 21h 
 
 mov ah, 9 
 lea dx, d 
 int 21h 
 
 mov ah, 2 
 mov dl, 10 
 int 21h
 
 
 mov ah, 2 
 mov dl, 13 
 int 21h
 
 mov ah, 9 
 lea dx, e 
 int 21h
 
 mov ah, 2 
 mov dl, 10 
 int 21h 
 
 
mov ah, 2 
 mov dl, 13 
 int 21h 
 
 
 mov ah, 9 
 lea dx, c 
 int 21h 
 
 mov ah, 2 
 mov dl, b 
 int 21h 
 
 main endp 
end main 