.model small

.data

.code
.STARTUP
main proc
	    MOV AX,1000H        ;
	    MOV DS,AX           ;set data segment register

		MOV	[1686H],55H   	;set memory related data
		MOV	[1684H],55H	    ;set memory related data
		MOV	[1682H],55H	    ;set memory related data
		MOV	[1680H],55H	    ;set memory related data

		mov	cx,200		;set up the counter
		mov	si,1680H	;set up the pointer
		
back:	mov ax,[si]
						;pointed at by si
		inc	si			;increment the pointer
		inc	si			;increment the pointer
		cmp	ax,55H	    ;compare the 55h with mem location
		loope back		;continue the process until cx=0 or
						;zf=0. in other words exit if one
						;location does not have 55h

endp
end main
.EXIT
END