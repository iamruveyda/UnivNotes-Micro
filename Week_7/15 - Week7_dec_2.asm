.model small

.data

.code

main proc
    mov [5000H],1010H
    dec [5000H]
    mov ax,[5000H]
        
endp
end main