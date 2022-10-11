.model small

.data

.code

main proc
    mov ah,0
    mov al,'8'  ; AX = 0038h
    add al,'2'  ; AX = 006Ah
    aaa         ; AX = 0100h (ASCII adjust result)
    or ax,3030h ; AX = 3130h = '10' (convert to ASCII) ->  ah = 1, al = 0  ->  '10'

endp
end main