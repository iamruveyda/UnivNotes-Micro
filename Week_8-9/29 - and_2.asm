.model small

.data

.code

main proc
    mov al,'a'
    and al,11011111b ; clear bit 5
    mov al,'b'
    and al,11011111b ; clear bit 5
    
endp
end main