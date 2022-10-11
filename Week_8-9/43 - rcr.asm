.model small

.data

.code

main proc
    CLC			;make CF=0
    MOV AL,26H	;AL=0010 0110
    MOV CL,3	;CL=3 number of times to rotate
    RCR AL,CL	;AL=1000 0100	CF=1
                ;AL = 1001 1110     CF = 1
     
endp
end main