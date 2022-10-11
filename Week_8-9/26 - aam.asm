.model small

.data

.code

main proc
    MOV	AL,'7'	    ;AL=37H
    AND	AL,0FH	    ;AL=07 unpacked BCD
    MOV	DL,'6'	    ;DL=36H
    AND	DL,0FH	    ;DL=06 unpacked BCD
    MUL	DL	        ;AX=ALxDL. =07x06=002AH=42
    AAM		        ;AX=0402 (7x6=42 unpacked BCD)
    OR	AX,3030H	;AX=3432 result in ASCII

endp
end main