.model small

.data

.code

main proc
    MOV	AL,36H	;AL = 0011 0110 
    MOV	CL,3	;CL = 3 number of times to rotate 
    ROR	AL,CL	;AL = 1100 0110		CF = 1 
                ;AL = 1001 1110     CF = 1
     
endp
end main