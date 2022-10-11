.model small

.data

.code

main proc
    mov     al,00100101b    
    test    al,00001001b    ;  test bits 0 and 3
    mov     al,00100100b    
    test    al,00001001b    ;  test bits 0 and 3

endp
end main