.model small

.data

.code

main proc
		MOV	0206H,0DH	;load memory related data
		MOV	0205H,0BH	;load memory related data
		MOV	0204H,09H	;load memory related data
		MOV	0203H,07H	;load memory related data
		MOV	0202H,05H	;load memory related data
		MOV	0201H,03H	;load memory related data
		MOV	0200H,01H	;load memory related data


		MOV	CX,05	    ;CX holds the loop count
		MOV	BX,0200H	;BX holds the offset data address
		MOV	AL,00	    ;initialize AL
ADD_LP:	ADD	AL,[BX]		;add the next byte to AL
		INC	BX	        ;increment the data pointer
		DEC	CX	        ;decrement the loop counter
		JNZ	ADD_LP	    ;jump to next iteration if counter not zero
        
endp
end main