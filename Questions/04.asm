.model small

.data    

.code

main proc     
         
    
    
;initialize the memory and registers  

	    MOV AX,3000H        ;
	    MOV DS,AX           ;set data segment register

    
         	    MOV	[0059H],0000H   ;set memory related data     
        MOV	[0058H],0001H   ;set memory related data        
        MOV	[0057H],0002H   ;set memory related data             
        MOV	[0056H],0003H   ;set memory related data      
        MOV	[0055H],0004H   ;set memory related data  
        MOV	[0054H],0005H   ;set memory related data 
        MOV	[0053H],0006H   ;set memory related data       
        MOV	[0052H],0007H   ;set memory related data
	    MOV	[0051H],0008H   ;set memory related data
        MOV	[0050H],0009H   ;set memory related data


	   
	    MOV AX,0008H        ;
	    MOV DI,AX           ;set destination index register


		MOV	[0109H],00H   	;set memory related data		
		MOV	[0108H],02H   	;set memory related data	
		MOV	[0107H],04H   	;set memory related data	
		MOV	[0106H],06H   	;set memory related data
		MOV	[0105H],08H	    ;set memory related data
		MOV	[0104H],0AH	    ;set memory related data
        MOV	[0103H],0CH	    ;set memory related data
        MOV	[0102H],0EH	    ;set memory related data   
        MOV	[0101H],11H	    ;set memory related data     
        MOV	[0100H],00H	    ;set memory related data  
        
      	MOV	[0159H],0AH   	;set memory related data		
		MOV	[0158H],0AH   	;set memory related data	
		MOV	[0157H],0EH   	;set memory related data	
		MOV	[0156H],0EH   	;set memory related data
		MOV	[0155H],0AH	    ;set memory related data
		MOV	[0154H],0AH	    ;set memory related data
        MOV	[0153H],0EH	    ;set memory related data
        MOV	[0152H],0EH	    ;set memory related data   
        MOV	[0151H],00H	    ;set memory related data     
        MOV	[0150H],00H	    ;set memory related data    
                
    	
		MOV	[0209H],1BH   	;set memory related data		
		MOV	[0208H],1BH   	;set memory related data	
		MOV	[0207H],15H   	;set memory related data	
		MOV	[0206H],12H   	;set memory related data
		MOV	[0205H],0FH	    ;set memory related data
		MOV	[0204H],0CH	    ;set memory related data
        MOV	[0203H],09H	    ;set memory related data
        MOV	[0202H],06H	    ;set memory related data   
        MOV	[0201H],03H	    ;set memory related data     
        MOV	[0200H],00H	    ;set memory related data    
        
        
                
      	MOV	[0159H],2DH   	;set memory related data		
		MOV	[0158H],28H   	;set memory related data	
		MOV	[0157H],23H   	;set memory related data	
		MOV	[0156H],1EH   	;set memory related data
		MOV	[0155H],19H	    ;set memory related data
		MOV	[0154H],14H	    ;set memory related data
        MOV	[0153H],0FH	    ;set memory related data
        MOV	[0152H],0AH	    ;set memory related data   
        MOV	[0151H],05H	    ;set memory related data     
        MOV	[0150H],00H	    ;set memory related data      
	 


;starts right here!        
         
        MOV DX,[0053H]      ;load memory related data
        MOV CX,DX           ;add cx to dx
        ADD DX, 004AH

        MOV BX,DX           ;copy dx to bx
        MOV AL,00           ;clear al
CME321:           ADD AL,[BX + DI]     ;add the content data from memory location of BX+DI
        DEC BX  
        DEC CX
        JNZ CME321          ;The JNZ (jump if not Zero) instruction jumps if the Zero flag is clear:
	                        ;means "Jump to next iteration if counter not zero."
        
           
endp
end main