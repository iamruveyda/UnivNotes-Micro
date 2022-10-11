.model small

.data

.code

main proc
		xor dl,dl
		and	dl,10110000b
		jnz	L2                  ; jump if ZF = 0
                
quit:   ret    
L2:     mov al,dl               ; do something..
endp
end main