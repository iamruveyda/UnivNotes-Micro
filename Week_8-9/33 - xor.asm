.model small

.data

.code

main proc
    mov     al,10110101b    ; 5 bits = odd parity
    xor     al,0            ; Parity flag clear (odd)
    mov     al,11001100b    ; 4 bits = even parity
    xor     al,0            ; Parity flag set (even)

	mov	    ax,64C1h		; 0110 0100 1100 0001
	xor	    ah,al			; Parity flag set (even)

endp
end main