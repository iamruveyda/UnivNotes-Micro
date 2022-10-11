.model small

.data

.code
.STARTUP
main proc
    mov ax,0
    mov cx,5
L1:
    inc ax
    loop L1

endp
end main
.EXIT
END