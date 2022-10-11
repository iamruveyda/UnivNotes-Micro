.model small

.data

.code

main proc
    mov ax,0FFFFH
    add ax,0001H
    mov ax,1010H
    adc ax,2020H
        
endp
end main