.model small

.data

.code

main proc
;initialize the memory and registers

	    MOV AX,1000H        ;
	    MOV DS,AX           ;set data segment register

        MOV	[0050H],0003H   ;set memory related data
	    MOV	[0052H],00FBH   ;set memory related data
	    MOV AX,0002H        ;
	    MOV DI,AX           ;set destination index register

		MOV	[0106H],0DH   	;set memory related data
		MOV	[0105H],0BH	    ;set memory related data
		MOV	[0104H],09H	    ;set memory related data
		MOV	[0103H],07H	    ;set memory related data
		MOV	[0102H],05H	    ;set memory related data
		MOV	[0101H],03H	    ;set memory related data
		MOV	[0100H],01H	    ;set memory related data

;quiz starts right here!

        MOV	DX,[0050H]      ;load memory related data
	    MOV	CX,[0052H]      ;load memory related data
	    ADD	DX,CX           ;add cx to dx

	    MOV	BX,DX           ;copy dx to bx
	    MOV	AL,00           ;clear al
CME321: ADD	AL,[BX + DI]    ;add the content data from memory location of BX+DI
	    INC	BX              ;base register increment
	    INC	CL              ;counter register increment
	    JNZ	CME321          ;The JNZ (jump if not Zero) instruction jumps if the Zero flag is clear:
	                        ;means "Jump to next iteration if counter not zero."
        
endp
end main