.model small

.data

.code

main proc
    mov dx,0AH
    mov ax,0000H
    mov bx,050H
    div bx
        
endp
end main