.model small

.data

.code

main proc
    MOV	AH,0	    ;AH=0H
    MOV	AL,'8'	    ;AL=38H
    SUB	AL,'9'	    ;AL=39H
    AAS		        ;AX=0402 (7x6=42 unpacked BCD)
    OR	AL,30H	    ;AX=3432 result in ASCII

endp
end main