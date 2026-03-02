.model small
.stack 64

.data
    ; Declare variables from memory map
    pogi db 055h
    ako dw 3412h
    handsome dd 12345678h
    talented db 0AAh
    frans db 01h,02h,03h,04h
    andrew dw 009Ch,012Ah
    

.code
main proc
    mov ax, @data
    mov ds, ax
    mov es, ax

    ; Part A - Load
    mov AL, pogi
    mov BX, ako
    mov CX, andrew

    ; Part B - Indexed access
    mov SI, offset frans
    mov AH, [si+2] 

    ; Part C - Arithmetic operations
    add AH, AL
    add BX, 1
    sub CX, 1

    ; Part D - Store results
    mov ako, AX
    mov andrew, BX
    mov talented, AH

    mov ax, 4C00h
    int 21h

main endp
end main