TITLE WORD, DWORD, QWORD, TBYTE and Real Data   (14-WordDwordQwordReal.asm)
; Lecture 3, slides 50-52.
; The slides reuse the name val1 in several snippets. Names must be
; unique in one program, so the DWORD and TBYTE ones are renamed.
INCLUDE Irvine32.inc
.data
; WORD and SWORD: 2 bytes each
word1 WORD  65535       ; largest unsigned value
word2 SWORD -32768      ; smallest signed value
word3 WORD  ?           ; uninitialized, unsigned
list  WORD  1,2,3,4,5   ; array of words
array WORD  5 DUP(?)    ; uninitialized array
val1  DW    65535       ; legacy DW directive

; DWORD and SDWORD: 4 bytes each
dval1 DWORD  12345678h          ; unsigned
dval2 SDWORD -2147483648        ; signed
dval3 DWORD  20 DUP(?)          ; unsigned array
dval4 SDWORD -3,-2,-1,0,1       ; signed array
dval5 DD     12345678h          ; legacy DD directive

; QWORD, TBYTE, REAL4
quad1      QWORD 1234567812345678h
tval1      TBYTE 1000000000123456789Ah
rVal1      REAL4 -2.1
ShortArray REAL4 20 DUP(0.0)
.code
main PROC
    mov  esi,OFFSET word1       ; word1 .. val1: 1 + 1 + 1 + 5 + 5 + 1 = 14 words
    mov  ecx,14                 ; FFFF 8000 0000 0001 ... 0005 0000 x 5 FFFF
    mov  ebx,TYPE WORD
    call DumpMem

    mov  esi,OFFSET dval1       ; 12345678 80000000
    mov  ecx,2
    mov  ebx,TYPE DWORD
    call DumpMem

    mov  esi,OFFSET dval4       ; FFFFFFFD FFFFFFFE FFFFFFFF 00000000 00000001 12345678
    mov  ecx,6
    mov  ebx,TYPE DWORD
    call DumpMem

    mov  esi,OFFSET quad1       ; 8 bytes, lowest byte first: 78 56 34 12 78 56 34 12
    mov  ecx,8
    mov  ebx,TYPE BYTE
    call DumpMem

    mov  esi,OFFSET tval1       ; 10 bytes: 9A 78 56 34 12 00 00 00 00 10
    mov  ecx,10
    mov  ebx,TYPE BYTE
    call DumpMem

    mov  esi,OFFSET rVal1       ; -2.1 in IEEE single precision: C0066666
    mov  ecx,1
    mov  ebx,TYPE REAL4
    call DumpMem
    exit
main ENDP
END main
