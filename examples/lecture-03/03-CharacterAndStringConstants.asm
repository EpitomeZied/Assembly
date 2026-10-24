TITLE Character, String and Real Constants   (03-CharacterAndStringConstants.asm)
; Lecture 3, slides 7-8.
;   One ASCII character = 1 byte.
;   A string stores one byte per character.
INCLUDE Irvine32.inc
.data
char1   BYTE 'A'                        ; single quotes
char2   BYTE "x"                        ; double quotes
string1 BYTE "ABC",0                    ; 3 bytes + null
string2 BYTE 'xyz',0                    ; 3 bytes + null
quoted  BYTE 'Say "Goodnight," Gorg',0  ; embedded quotes

; Real number constants:  [sign] integer.[integer] [exponent]
real1   REAL4 2.
real2   REAL4 +3.0
real3   REAL4 -44.2E+05
.code
main PROC
    mov  al,char1
    call WriteChar      ; A
    mov  al,char2
    call WriteChar      ; x
    call Crlf

    mov  edx,OFFSET string1
    call WriteString    ; ABC
    call Crlf
    mov  edx,OFFSET string2
    call WriteString    ; xyz
    call Crlf
    mov  edx,OFFSET quoted
    call WriteString    ; Say "Goodnight," Gorg
    call Crlf

    mov  esi,OFFSET char1           ; dump the bytes of the strings
    mov  ecx,OFFSET real1 - OFFSET char1
    mov  ebx,TYPE BYTE
    call DumpMem

    mov  esi,OFFSET real1           ; the three reals, as stored (IEEE)
    mov  ecx,3
    mov  ebx,TYPE REAL4
    call DumpMem
    exit
main ENDP
END main
