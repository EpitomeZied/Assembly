TITLE Integer Constants                 (01-IntegerConstants.asm)
; Lecture 3, slide 4:  [{+ | -}] digits [radix]
; The first four MOVs load the same value, 25.
; A hex constant that begins with a letter needs a leading 0.
INCLUDE Irvine32.inc
.code
main PROC
    mov  eax,25         ; decimal
    call WriteInt
    call Crlf
    mov  eax,19h        ; hexadecimal
    call WriteInt
    call Crlf
    mov  eax,11001b     ; binary
    call WriteInt
    call Crlf
    mov  eax,31o        ; octal
    call WriteInt
    call Crlf
    mov  eax,-10        ; decimal, negative
    call WriteInt
    call Crlf

    mov  eax,0A3h       ; 0A3h = 163  (A3h alone would be read as a name)
    call WriteInt
    call Crlf
    mov  eax,26d        ; d = decimal
    call WriteInt
    call Crlf
    mov  eax,42q        ; q = octal, same as 42o = 34
    call WriteInt
    call Crlf
    exit
main ENDP
END main
