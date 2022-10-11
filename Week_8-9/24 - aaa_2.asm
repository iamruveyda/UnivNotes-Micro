.model small

.data

.code

main proc
    mov ah,0    ;AH=OO
    mov al,'7'  ;AX = 0037h
    add al,'5'  ;AX = 006Ch
    aaa         ;changes 6CH to 02 in AL and AH=CF=1
    or ax,3030h ;AX=3132 which is the ASCII for 12H. ->  ah = 1, al = 2  ->  '12'

endp
end main