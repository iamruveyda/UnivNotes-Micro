.model small

.data

.code

main proc
    mov dx,00H
    mov ax,0A000H
    mov bx,05H
    div bx
        
endp
end main