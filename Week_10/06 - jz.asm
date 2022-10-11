.model small

.data

.code

main proc
		xor	ax,ax
		;mov ax,1
        cmp	ax,0
		jz	L1          ; jump if ZF = 1
                
quit:   ret
    
L1:     add ax,0AAH     ; do something..
ret

endp
end main