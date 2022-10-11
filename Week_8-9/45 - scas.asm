.model small

.data
    DATA1 DB                'ABCDEFGH' 
.code

main proc
    MOV	AX,@DATA            ; INITIALIZE THE DATA SEGMENT 
    MOV	DS,AX               ; INITIALIZE THE EXTRA SEGMENT 
    MOV	ES,AX               ; CLEAR DIRECTION FLAG FOR AUTOINCREMENT 

    mov di,OFFSET DATA1     ; EDI points to the string
    mov al,'F'              ; search for the letter F
    mov cl,8                ; set the search count
    cld                     ; direction = forward
    repne scasb             ; repeat while not equal
    jnz quit                ; quit if letter not found
    dec di                  ; found: back up EDI
        
quit:   ret    
     
endp
