.model small

.data

.code

main proc
		mov ax,-5
		cmp ax,-6
		jl  L1                  ; jump if less
                
quit:   ret    
L1:     mov dx,ax               ; do something..
endp
end main