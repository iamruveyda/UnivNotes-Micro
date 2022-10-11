.model small

.data
   
    DATA5 DB 'ABCDEFGHIJKLM' 

.code          


main proc
        
        MOV	AX,@DATA            ;Data segmentini kod bloguna/segmentine tanit.     
        MOV	DS,AX               ;AX i data segmentine aktar.
        MOV	ES,AX               ;AX i extra segmente aktar. 
      
        SUB	CX, CX            
        
                    ;CX artik 00 00     
    	SUB	AL, AL  
    	          
    	            ;AL artik 00      
    
    	NOT	CX                
    	            ;CX artik FF FF           
    	              
    	CLD     
    	              
    	            ;DF(Direction Flag)=0 ; islemler ileriye dogru           
                    
        REPNE                 ;Esit degilse yinele
        SCASB                 ;CL 1 azaltiyor. DI bir artiyor.      
    	
    	
    	NOT	CX    
    	            
    	            ;DI da ki cikan sonuc CX de oldu    
    	                   
    	DEC	CX      
    	          
    	            ;CX den de 1 cikarinca uzunluk bulundu.
    	
    	;DEC (decrease-azalt) komutu INC komutunun tersidir. 
    	;buldugun degeri 1 azaltiyordu.
    	
        MOV DI,OFFSET DATA5   
                              
        MOV AL,'H'            
                              
        CLD                 
      
        REPNE 
        SCASB        
     
        JNZ quit              ;harf bulmazsa cikar
       
        DEC DI                   
        
quit:   RET    

endp
end main