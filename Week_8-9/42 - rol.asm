.model small

.data

.code

main proc
    MOV	BH,72H	;BH = 0111 0010 
    MOV	CL,4	;CL = 4 number of times to rotate 
    ROL	BH,CL	;BH = 0010 0111	CF=1
                ;AL = 1001 1110     CF = 1
     
endp
end main