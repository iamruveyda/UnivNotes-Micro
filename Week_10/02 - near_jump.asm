.model small

.data

.code

main proc
        XOR	BX,BX
START:	MOV	AX,1
        ADD	AX,BX	
        JMP	NEXT
        
MIDDLE: XOR AH,AL       ;<skipped memory locations>
        XOR BH,BL
    		
NEXT:	MOV	BX,AX
        JMP	START	


endp
end main