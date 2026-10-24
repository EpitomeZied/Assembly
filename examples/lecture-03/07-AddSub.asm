TITLE Add and Subtract (AddSub.asm)
; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 50000h   ; EAX = 10000h
    add eax, 40000h   ; EAX = 50000h
    sub eax, 20000h   ; EAX = 30000h
    call DumpRegs    ; Display registers
    exit
main ENDP

END main