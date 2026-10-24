TITLE Add and Subtract, Version 2      (AddSub2r.asm)
; Lecture 3, slide 69: the 16-bit (real-mode) version of AddSub2.
; Uses Irvine16, so it must be built with the 16-bit linker
; (make16.bat / LINK16) and run under MS-DOS or DOSBox.
; The program must point DS at the data segment first. A segment
; register cannot be loaded with an immediate, so the value goes
; through AX.
INCLUDE Irvine16.inc
.data
val1     DWORD 10000h
val2     DWORD 40000h
val3     DWORD 20000h
finalVal DWORD ?
.code
main PROC
    mov  ax,@data       ; initialize DS
    mov  ds,ax
    mov  eax,val1       ; get first value
    add  eax,val2       ; add second value
    sub  eax,val3       ; subtract third value
    mov  finalVal,eax   ; store the result
    call DumpRegs       ; display registers
    exit
main ENDP
END main
