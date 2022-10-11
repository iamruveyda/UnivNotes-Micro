.model small

.data

.code

main proc
    MOV   AL,-10     ;AL = -10 = F6H = 1111 0110
    SAR   AL,1       ;AL is shifted right arithmetic once
                     ;AL = 1111 1011 = FBH = -5
     
endp
end main