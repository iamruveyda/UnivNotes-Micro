.model small

.data    

.code

main proc     
         
    
    
;initialize the memory and registers  

	    MOV AX,2000H        ;
	    MOV DS,AX           ;set data segment register

    
    
        MOV	[0059H],0000H   ;set memory related data     
        MOV	[0058H],0003H   ;set memory related data        
        MOV	[0057H],0005H   ;set memory related data             
        MOV	[0056H],0007H   ;set memory related data      
        MOV	[0055H],0009H   ;set memory related data  
        MOV	[0054H],000BH   ;set memory related data 
        MOV	[0053H],000DH   ;set memory related data       
        MOV	[0052H],000FH   ;set memory related data
	    MOV	[0051H],0000H   ;set memory related data
        MOV	[0050H],0004H   ;set memory related data

	   
	    MOV AX,0008H        ;
	    MOV DI,AX           ;set destination index register

		
		
		
		MOV	[0109H],00H   	;set memory related data		
		MOV	[0108H],0AH   	;set memory related data	
		MOV	[0107H],09H   	;set memory related data	
		MOV	[0106H],08H   	;set memory related data
		MOV	[0105H],07H	    ;set memory related data
		MOV	[0104H],06H	    ;set memory related data
        MOV	[0103H],05H	    ;set memory related data
        MOV	[0102H],04H	    ;set memory related data   
        MOV	[0101H],03H	    ;set memory related data     
        MOV	[0100H],00H	    ;set memory related data          
        


;starts right here!        
         
        MOV DX,[0050H]      ;load memory related data
        MOV CX,DX           ;add cx to dx
        ADD DX, 00FCH

        MOV BX,DX           ;copy dx to bx
        MOV AL,00           ;clear al
CME321:           ADD AL,[BX + DI]     ;add the content data from memory location of BX+DI
        DEC BX  
        DEC CX
        JNZ CME321          ;The JNZ (jump if not Zero) instruction jumps if the Zero flag is clear:
	                        ;means "Jump to next iteration if counter not zero."
        
           
endp
end main