.model small

.data    

.code

main proc     
         
    
    
;initialize the memory and registers  

	    MOV AX,1000H        ;
	    MOV DS,AX           ;set data segment register

    
    
        MOV	[0059H],00FFH   ;set memory related data     
        MOV	[0058H],0010H   ;set memory related data        
        MOV	[0057H],0007H   ;set memory related data             
        MOV	[0056H],0005H   ;set memory related data      
        MOV	[0055H],0008H   ;set memory related data  
        MOV	[0054H],000AH   ;set memory related data 
        MOV	[0053H],00FDH   ;set memory related data       
        MOV	[0052H],0004H   ;set memory related data
	    MOV	[0051H],0000H   ;set memory related data
        MOV	[0050H],0005H   ;set memory related data

	   
	    MOV AX,0008H        ;
	    MOV DI,AX           ;set destination index register

		
		
		
		MOV	[0109H],00H   	;set memory related data		
		MOV	[0108H],01H   	;set memory related data	
		MOV	[0107H],01H   	;set memory related data	
		MOV	[0106H],02H   	;set memory related data
		MOV	[0105H],03H	    ;set memory related data
		MOV	[0104H],05H	    ;set memory related data
        MOV	[0103H],08H	    ;set memory related data
        MOV	[0102H],0DH	    ;set memory related data   
        MOV	[0101H],15H	    ;set memory related data     
        MOV	[0100H],02H	    ;set memory related data          
        


;starts right here!        
         
        MOV DX,[0050H]      ;load memory related data
        MOV CX,DX           ;add cx to dx
        ADD DX, 00FBH

        MOV BX,DX           ;copy dx to bx
        MOV AL,00           ;clear al
CME321:           ADD AL,[BX + DI]     ;add the content data from memory location of BX+DI
        DEC BX  
        DEC CX
        JNZ CME321          ;The JNZ (jump if not Zero) instruction jumps if the Zero flag is clear:
	                        ;means "Jump to next iteration if counter not zero."
        
           
endp
end main