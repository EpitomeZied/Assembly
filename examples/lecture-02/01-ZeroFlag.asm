TITLE The Zero Flag                     (01-ZeroFlag.asm)
; Lecture 2, slide 31: how instructions set and clear ZF.
; Watch ZF in each DumpRegs listing.
INCLUDE Irvine32.inc
.code
main PROC
    mov  eax,0
    mov  ecx,0
    mov  al,1
    add  al,0               ; result is 1 (not 0)   -> ZF = 0
    call DumpRegs           ; initially ZF = 0

    mov  al,55h             ; ZF is still 0   (MOV does not change flags)
    call DumpRegs

    sub  al,55h             ; result is 0           -> ZF = 1
    call DumpRegs

    mov  cx,0               ; ZF remains 1
    call DumpRegs

    inc  cx                 ; result is 1           -> ZF = 0
    call DumpRegs
    exit
main ENDP
END main
