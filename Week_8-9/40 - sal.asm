.model small

.data

.code

main proc
    MOV   AL,11001111b  ;AL = 1100 1111
    SAL   AL,1          ;AL is shifted right arithmetic once
                        ;AL = 1001 1110 CF = 1
     
endp
end main