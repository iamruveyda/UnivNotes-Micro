.model small

.data

.code
.STARTUP
main proc
	    MOV AX,1000H        ;
	    MOV DS,AX           ;set data segment register

		MOV	[1206H],30   	;set memory related data
		MOV	[1204H],30	    ;set memory related data
		MOV	[1202H],29	    ;set memory related data
		MOV	[1200H],28	    ;set memory related data

		mov	cx,30		    ;set up the counter
		mov	di,1200H	    ;set up the pointer
		
again:	mov ax,[di]
						    ;pointed at by di
		inc	di			    ;increment the pointer
		inc	di			    ;increment the pointer
		cmp	ax,30	        ;compare the 30 with mem location
		loopne again        ;continue the process until cx=0 or
						    ;zf=1. in other words exit if one
						    ;location does have 30

endp
end main
.EXIT
END