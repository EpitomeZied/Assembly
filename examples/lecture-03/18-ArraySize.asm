TITLE Calculating the Size of an Array  (18-ArraySize.asm)
; Lecture 3, slides 62-65.
; $ is the current location counter. Written right after an array,
; ($ - array) is its size in bytes. Divide by the element size
; (1, 2 or 4) to get the number of elements.
; The slides call every array "list"; here each one has its own name.
INCLUDE Irvine32.inc
.data
list BYTE 10,20,30,40
ListSize = ($ - list)                   ; 4 bytes, 4 elements

myString BYTE "This is a long string, containing"
myString_len = ($ - myString)           ; 33 bytes

wordList WORD 1000h,2000h,3000h,4000h
WordListSize = ($ - wordList) / 2       ; 8 / 2 = 4 elements

dwordList DWORD 10000000h,20000000h
DwordListSize = ($ - dwordList) / 4     ; 8 / 4 = 2 elements
.code
main PROC
    mov  eax,ListSize
    call WriteDec       ; 4
    call Crlf
    mov  eax,myString_len
    call WriteDec       ; 33
    call Crlf
    mov  eax,WordListSize
    call WriteDec       ; 4
    call Crlf
    mov  eax,DwordListSize
    call WriteDec       ; 2
    call Crlf
    exit
main ENDP
END main
