.model small

.data

.code

main proc
    MOV	AX,3539H	;AX=3539. ASCII for 59
    AND	AX,0F0FH	;AH=05,AL=09 unpacked BCD data
    AAD             ;AX=003BH hex equivalent of 59
    MOV	BH,08H      ;divide by 08
    DIV	BH	        ;3B/08 gives AL=07,AH=03
    OR	AX,3030H	;AL=37H (quotient) AH=33H (rem)

endp
end main