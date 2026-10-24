TITLE C to MASM: X = (a + b) * 3        (21-CToMasm.asm)
; Lecture 3, slide 70.
; The slide leaves a and b uninitialized and ends with
; "mov eax, x", which overwrites EAX. The result must go
; the other way: mov X, eax.
INCLUDE Irvine32.inc
.data
a DWORD 1000h
b DWORD 2000h
X DWORD ?
.code
main PROC
    mov  eax,a          ; EAX = 1000h
    add  eax,b          ; EAX = 1000h + 2000h = 3000h
    imul eax,3          ; EAX = 3000h * 3     = 9000h
    mov  X,eax          ; move the result to X

    mov  esi,OFFSET X
    mov  ecx,1
    mov  ebx,TYPE X
    call DumpMem        ; display the memory variable: 00009000
    exit
main ENDP
END main
