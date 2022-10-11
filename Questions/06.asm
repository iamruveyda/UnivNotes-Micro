.model small

.data

.code

main proc
;initialize the memory and registers

	    MOV AX,2000H        ;
	    MOV DS,AX           ;set data segment register

        MOV	[0050H],0004H   ;set memory related data
	    MOV	[0052H],00FCH   ;set memory related data

	    MOV AX,0050H        ;
	    MOV DI,AX           ;set destination index register

		MOV	[0156H],0CH	    ;set memory related data
		MOV	[0155H],0AH	    ;set memory related data
		MOV	[0154H],08H	    ;set memory related data
		MOV	[0153H],06H	    ;set memory related data
		MOV	[0152H],04H	    ;set memory related data
		MOV	[0151H],02H	    ;set memory related data
		MOV	[0150H],00H	    ;set memory related data

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