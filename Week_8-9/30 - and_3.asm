.model small

.data

.code

main proc
    MOV  BL,35H 
    AND  BL,0FH  ;AND BL with 0FH. Place the result in BL.
    MOV  BL,35H 
    AND  BL,0F0H  ;AND BL with 0F0H. Place the result in BL.

endp
end main