TITLE The DUP Operator                  (13-DupOperator.asm)
; Lecture 3, slide 46:   counter DUP ( argument )
; n DUP(list) gives n * (length of list) values.
INCLUDE Irvine32.inc
.data
var1 BYTE 20 DUP(0)             ; 20 bytes, all zero
var2 BYTE 20 DUP(?)             ; 20 bytes, uninitialized
var3 BYTE 4 DUP("STACK")        ; 20 bytes: "STACKSTACKSTACKSTACK"
var4 BYTE 10, 3 DUP(0), 20      ; 5 bytes:  10, 0, 0, 0, 20
var5 BYTE 3 DUP(0,1)            ; 6 bytes:  0, 1, 0, 1, 0, 1
.code
main PROC
    mov  ebx,TYPE BYTE

    mov  esi,OFFSET var1
    mov  ecx,20
    call DumpMem

    mov  esi,OFFSET var2
    mov  ecx,20
    call DumpMem        ; ? : MASM fills these with 0 in .data

    mov  esi,OFFSET var3
    mov  ecx,20
    call DumpMem        ; 53 54 41 43 4B  x 4

    mov  esi,OFFSET var4
    mov  ecx,5
    call DumpMem        ; 0A 00 00 00 14

    mov  esi,OFFSET var5
    mov  ecx,6
    call DumpMem        ; 00 01 00 01 00 01
    exit
main ENDP
END main
