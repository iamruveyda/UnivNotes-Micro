.model small

.data
    DATA1 DB 'Europe' 
    DATA2 DB 'Euorop' 

.code

main proc
    MOV	AX,@DATA        ; INITIALIZE THE DATA SEGMENT 
    MOV	DS,AX           ; INITIALIZE THE EXTRA SEGMENT 
    MOV	ES,AX           ; CLEAR DIRECTION FLAG FOR AUTOINCREMENT 
    CLD                 ; DF=O for increment 
    MOV	SI,OFFSET DATA1 ; SI=DATA 1 offset 
    MOV	DI,OFFSET DATA2 ; DI=DATA2 offset 
    MOV	CX,06           ; Ioad the counter 
    REPE CMPSB          ; repeat until not equal or CX=0        
quit:   ret

endp
end main