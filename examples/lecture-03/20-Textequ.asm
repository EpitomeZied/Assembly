TITLE The TEXTEQU Directive             (20-Textequ.asm)
; Lecture 3, slide 68.
;   name TEXTEQU <text>
;   name TEXTEQU textmacro
;   name TEXTEQU %constExpr     ; evaluate, then convert to text
; A TEXTEQU symbol can be redefined.
INCLUDE Irvine32.inc

continueMsg TEXTEQU <"Do you wish to continue (Y/N)?">
rowSize = 5
.data
prompt1 BYTE continueMsg,0       ; ,0 added so WriteString can display it
count   TEXTEQU %(rowSize * 2)  ; evaluates the expression: "10"
move    TEXTEQU <mov>
setupAL TEXTEQU <move al,count> ; generates: "mov al,10"
.code
main PROC
    mov  edx,OFFSET prompt1
    call WriteString
    call Crlf

    mov  eax,0
    setupAL                     ; assembles as: mov al,10
    call WriteDec               ; 10
    call Crlf

count TEXTEQU %(rowSize * 3)    ; redefined: "15"
    mov  eax,count
    call WriteDec               ; 15
    call Crlf
    exit
main ENDP
END main
