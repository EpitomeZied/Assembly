TITLE Declaring Uninitialized Data      (16-UninitializedData.asm)
; Lecture 3, slide 58.
; Variables in .data? are reserved only when the program runs,
; so the EXE file is smaller. (The slide writes .data; the
; directive for uninitialized data is .data?)
INCLUDE Irvine32.inc
.data
message BYTE "smallArray after storing 1, 2 and 3:",0
.data?
bigArray   DWORD 5000 DUP(?)    ; 20,000 bytes, not initialized
smallArray DWORD 10 DUP(?)      ; 40 bytes
array      BYTE  20 DUP(?)      ; 20 bytes
var1       BYTE  ?              ; 1 byte
var2       BYTE  10 DUP(?)      ; 10 bytes
.code
main PROC
    mov  smallArray,1           ; first element
    mov  smallArray+4,2         ; second element (4 bytes later)
    mov  smallArray+8,3         ; third element
    mov  var1,0FFh

    mov  edx,OFFSET message
    call WriteString
    mov  esi,OFFSET smallArray
    mov  ecx,10
    mov  ebx,TYPE DWORD
    call DumpMem
    exit
main ENDP
END main
