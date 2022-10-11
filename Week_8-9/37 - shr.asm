.model small

.data

.code

main proc
    MOV		AL,9AH		
    MOV		CL,3		;set number of times to shift 
    SHR		AL,CL

endp
end main