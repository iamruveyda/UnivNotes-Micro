.model small

.data

.code

main proc
    mov ch,22H
    sub ch,44H
    mov ax,2020H
    sbb ax,1000H
        
endp
end main