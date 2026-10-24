TITLE Add and Subtract, Version 2 (AddSub2.asm)
; Adds and subtracts 32-bit unsigned integers and stores
; the result in a variable.
; Lecture 3, slides 55 and 57.
INCLUDE Irvine32.inc
.data
val1     DWORD 10000h
val2     DWORD 40000h
val3     DWORD 20000h
finalVal DWORD ?
.code
main PROC
    mov  eax,val1       ; start with 10000h
    add  eax,val2       ; add 40000h
    sub  eax,val3       ; subtract 20000h
    mov  finalVal,eax   ; store the result (30000h)
    call DumpRegs       ; display the registers

    mov  esi,OFFSET finalVal
    mov  ecx,1
    mov  ebx,TYPE finalVal
    call DumpMem        ; finalVal = 00030000
    exit
main ENDP
END main
