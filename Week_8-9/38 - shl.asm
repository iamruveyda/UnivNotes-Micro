.model small

.data

.code

main proc
    MOV		DH,6 
    MOV		CL,4		;set number of times to shift 
    SHL		DH,CL

endp
end main