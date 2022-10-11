.model small

.data

.code

main proc
    mov ax,0FFFFH
    add ax,0001H
    mov ax,1010H
    mov bx,2020H
    adc ax,bx
        
endp
end main