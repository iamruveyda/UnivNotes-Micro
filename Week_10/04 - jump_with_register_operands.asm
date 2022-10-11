.model small

.data
    TABLE:	DW ONE			;jump table
    		DW TWO
    		DW THREE
.code
.STARTUP
main proc
        MOV	AX,@DATA
        MOV	DS,AX
        MOV	ES,AX

TOP:	MOV AH,1	        ;read key into AL
		INT 21H
		SUB AL,31H	        ;convert to BCD
		JB TOP	            ;if key < 1
		CMP AL,2
		JA TOP	            ;if key > 3
		MOV AH,0	        ;double key code
		ADD AX,AX
		MOV SI,OFFSET TABLE ;address TABLE
		ADD SI,AX           ;form lookup address
		MOV AX,[SI]	        ;get ONE, TWO or THREE
		JMP AX	            ;jump to ONE, TWO or THREE
ONE:	MOV DL,'1'	        ;get ASCII 1
		JMP BOT
TWO:	MOV DL,'2'	        ;get ASCII 2
	    JMP BOT
THREE:	MOV DL,'3'	        ;get ASCII 3
BOT:	MOV AH,2	        ;display number
		INT 21H

endp
end main
.EXIT
END