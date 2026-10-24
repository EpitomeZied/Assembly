TITLE The EQU Directive                 (19-Equ.asm)
; Lecture 3, slides 66-67.
;   name EQU expression
;   name EQU symbol
;   name EQU <text>
; An EQU symbol cannot be redefined.
INCLUDE Irvine32.inc

PI       EQU <3.1416>
pressKey EQU <"Press any key to continue...",0>
matrix1  EQU 10 * 10    ; evaluated now: the integer 100
matrix2  EQU <10 * 10>  ; stored as text "10 * 10", pasted where used

.data
prompt BYTE pressKey    ; same as: prompt BYTE "Press any key to continue...",0
M1     WORD matrix1     ; same as: M1 WORD 100
M2     WORD matrix2     ; same as: M2 WORD 10 * 10
piVal  REAL4 PI         ; same as: piVal REAL4 3.1416
.code
main PROC
    mov  edx,OFFSET prompt
    call WriteString
    call Crlf

    mov  eax,0
    mov  ax,M1
    call WriteDec       ; 100
    call Crlf
    mov  ax,M2
    call WriteDec       ; 100
    call Crlf
    exit
main ENDP
END main
