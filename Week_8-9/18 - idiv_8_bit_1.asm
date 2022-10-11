.model small

.data

.code

main proc
    mov al,-48
    cbw
    mov bl,05H
    idiv bl
        
endp
end main