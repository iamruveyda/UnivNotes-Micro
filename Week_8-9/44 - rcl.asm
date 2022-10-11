.model small

.data

.code

main proc
    STC			;make CF=1
    MOV BL,15H  ;BL=0001 0101
    MOV CL,2    ;0010 1011 CF=0
    RCL BL,CL   ;01010110 CF=0
     
endp
end main