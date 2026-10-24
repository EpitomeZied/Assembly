TITLE Binary Addition: 4 + 7            (03-BinaryAddition.asm)
; Lecture 1, slide 27: adding two binary integers.
;   carry:          1
;           0000 0100     (4)
;         + 0000 0111     (7)
;           ---------
;           0000 1011    (11)
INCLUDE Irvine32.inc
.code
main PROC
    mov  ebx,TYPE BYTE  ; WriteBinB: show 8 bits
    mov  eax,4          ; 0000 0100
    call WriteBinB
    call Crlf
    mov  eax,7          ; 0000 0111
    call WriteBinB
    call Crlf
    mov  eax,4
    add  eax,7          ; EAX = 0000 1011 = 11
    call WriteBinB
    call Crlf
    call WriteDec       ; 11
    call Crlf
    exit
main ENDP
END main
