.model small

.data

.code

main proc
    mov bl,48h
    mov al,85h
    sub al,bl
    das
    
endp
end main