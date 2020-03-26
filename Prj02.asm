;5Q-F/(A*B)/ S+2R*(G-L)
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
  
          mov ax,5
          mul Q
          mov ax,2
          mul R
          mov ax,A
          mul B
          mov ax, B
          div F
          mov ax, F
          div S
          mov cx, L
          sub G,cx
          mov ax, G
          mul R
          mov cx,R
          add S,cx
          mov ax,S
          sub Q, ax
          mov cx, Q
          mov C,cx
          
        
Exit:     mov al,  04ch
          int 21h         
End       Start