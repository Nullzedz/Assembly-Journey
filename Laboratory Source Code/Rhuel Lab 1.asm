.model small

.stack 64

.data
    var1 db 0A4h
    var2 dw 84FBh
    var3 dd 85BA45FDh
    var4 db 05h,06h,07h
    var5 db 08h,0Ah,0Bh,0Ch
    gwapo dw 078Ah,9453h,321Ah

.code
main proc near
MOV AX, @data
MOV DS, AX
MOV ES, AX  

MOV AH, var1
MOV AL, var4
mov bx,var2
mov cx, gwapo
mov dx, ax

mov var1,CH
mov var4,CL
mov var2,AX
mov gwapo,BX

mov AX, 4C00H
int 21H
main endp
      
    

    