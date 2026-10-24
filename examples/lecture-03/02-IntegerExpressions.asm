TITLE Integer Expressions               (02-IntegerExpressions.asm)
; Lecture 3, slides 5-6: the assembler evaluates constant
; expressions at assembly time, using operator precedence:
;   ( )  >  unary + -  >  * / MOD  >  + -
INCLUDE Irvine32.inc
.code
main PROC
    mov  eax,16 / 5               ; 3   (integer division)
    call WriteInt
    call Crlf
    mov  eax,-(3 + 4) * (6 - 1)   ; -35
    call WriteInt
    call Crlf
    mov  eax,-3 + 4 * 6 - 1       ; 20
    call WriteInt
    call Crlf
    mov  eax,25 mod 3             ; 1
    call WriteInt
    call Crlf

    mov  eax,4 + 5 * 2            ; multiply, then add       -> 14
    call WriteInt
    call Crlf
    mov  eax,12 - 1 MOD 5         ; modulus, then subtract   -> 11
    call WriteInt
    call Crlf
    mov  eax,-5 + 2               ; unary minus, then add    -> -3
    call WriteInt
    call Crlf
    mov  eax,(4 + 2) * 6          ; add, then multiply       -> 36
    call WriteInt
    call Crlf
    exit
main ENDP
END main
