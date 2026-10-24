TITLE D = A * B + 10                    (02-AssignD.asm)
; Lecture 1, slides 20-23: translating one HLL statement.
;   HLL : D = A * B + 10
; One statement becomes four instructions; each instruction
; becomes exactly one machine instruction.
INCLUDE Irvine32.inc
.data
A DWORD 6
B DWORD 7
D DWORD ?
.code
main PROC
    mov  eax,A          ; A1 00404000
    mul  B              ; F7 25 00404004
    add  eax,10         ; 83 C0 0A
    mov  D,eax          ; A3 00404008      D = 52
    mov  eax,D
    call WriteDec       ; display D: 52
    call Crlf
    exit
main ENDP
END main
