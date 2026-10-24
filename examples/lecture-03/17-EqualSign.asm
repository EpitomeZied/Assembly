TITLE The Equal-Sign Directive          (17-EqualSign.asm)
; Lecture 3, slides 60-61:   name = expression
; expression is a 32-bit integer. The assembler replaces the name
; with its value, so a constant uses no memory and is not in the EXE.
INCLUDE Irvine32.inc

COUNT = 500             ; a constant, not a memory location
; C = 3.14              ; error: the value must be an integer

.data
countVar BYTE 10        ; a variable: one byte of memory set to 10
.code
main PROC
    mov  eax,COUNT      ; assembles as: mov eax,500
    call WriteDec       ; 500
    call Crlf

    mov  eax,0
    mov  al,countVar    ; read the variable from memory
    call WriteDec       ; 10
    call Crlf

COUNT = 10              ; MASM lets a = symbol be redefined later
    mov  eax,COUNT      ; assembles as: mov eax,10
    call WriteDec       ; 10
    call Crlf
    exit
main ENDP
END main
