TITLE Comments                          (06-Comments.asm)
; Lecture 3, slide 23.
; Single-line comments begin with a semicolon.
INCLUDE Irvine32.inc
.code
main PROC
    mov  eax,0
    inc  eax            ; add 1 to EAX

COMMENT !
    This line is a comment
    This line is also a comment
!

COMMENT &
    This is a comment
&
    call DumpRegs       ; EAX = 00000001
    exit
main ENDP
END main
