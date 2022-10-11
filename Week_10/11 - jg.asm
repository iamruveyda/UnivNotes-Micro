.model small

.data

.code

main proc
		mov		ax,5
		cmp		ax,4
		jg		L1				; jump if greater
                
quit:   ret    
L1:     mov dx,ax               ; do something..
endp
end main