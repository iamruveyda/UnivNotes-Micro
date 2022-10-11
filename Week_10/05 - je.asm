.model small

.data

.code

main proc
		xor	bx,bx
		mov	ax,5
		add	ax,bx
		
		cmp		ax,5
		je		L1				; jump if equal
                
quit:   ret    
L1:     mov bx,ax               ; do something..
                
endp
end main