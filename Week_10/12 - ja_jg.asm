.model small

.data

.code

main proc
		    mov al,127		; hexadecimal value is 7Fh
		    cmp al,-128		; hexadecimal value is 80h
		    ja  IsAbove		; jump not taken, because 7Fh < 80h
		    jg  IsGreater   ; jump taken, because +127 > -128
                
quit:       ret    
IsAbove:    mov dx,ax       ; do something..
IsGreater:  mov dl,al       ; do something else..
endp
end main