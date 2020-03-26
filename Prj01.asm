;Q-F/(A*B)
         .MODEL small
         .STACK 100h
         .DATA
         
A         DW 5
B         DW 5
C         DW ?
G         DW 18
R         DW 4
L         DW 14
S         DW 10
Q         DW 10
F         DW 9

         .CODE
start:
          mov ax,  @data
          mov ds,ax    
  
          mov ax,A
          mul B
          mov cx,ax
          mov ax,F
          div cx
          sub Q, ax
          mov ax,Q
          mov C, ax
        
Exit:     mov al,  04ch
          int 21h         
End       Start