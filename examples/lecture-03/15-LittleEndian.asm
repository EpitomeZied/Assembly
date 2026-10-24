TITLE Little-Endian Order               (15-LittleEndian.asm)
; Lecture 3, slides 53-54.
; x86 stores the least-significant byte at the lowest address.
;   val1 DWORD 12345678h  is stored as  78 56 34 12
INCLUDE Irvine32.inc
.data
val1 DWORD 12345678h
.code
main PROC
    mov  esi,OFFSET val1
    mov  ecx,1
    mov  ebx,TYPE DWORD
    call DumpMem        ; as one doubleword: 12345678

    mov  esi,OFFSET val1
    mov  ecx,4
    mov  ebx,TYPE BYTE
    call DumpMem        ; byte by byte, low to high: 78 56 34 12
    exit
main ENDP
END main
