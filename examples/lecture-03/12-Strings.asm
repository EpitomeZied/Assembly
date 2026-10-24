TITLE Defining Strings                  (12-Strings.asm)
; Lecture 3, slides 40-44.
; A string is an array of characters, usually null-terminated (,0).
;   0Dh = CR, carriage return: cursor to the start of the line
;   0Ah = LF, line feed:       cursor to the next line
INCLUDE Irvine32.inc
.data
str1     BYTE "Enter your name",0
str2     BYTE 'Error: halting program',0
str3     BYTE 'A','E','I','O','U'       ; 5 bytes, no null at the end
greeting BYTE "Welcome to the Encryption Demo program "
         BYTE "created by Kip Irvine.",0

; To continue one string across lines, end each line with a comma.
menu BYTE "Checking Account",0dh,0ah,0dh,0ah,
   "1. Create a new account",0dh,0ah,
   "2. Open an existing account",0dh,0ah,
   "3. Credit the account",0dh,0ah,
   "4. Debit the account",0dh,0ah,
   "5. Exit",0ah,0ah,
   "Choice> ",0
.code
main PROC
    mov  edx,OFFSET str1
    call WriteString
    call Crlf
    mov  edx,OFFSET str2
    call WriteString
    call Crlf

    ; str3 has no null terminator, so dump its bytes instead
    mov  esi,OFFSET str3
    mov  ecx,5
    mov  ebx,TYPE BYTE
    call DumpMem        ; 41 45 49 4F 55
    call Crlf

    mov  edx,OFFSET greeting
    call WriteString
    call Crlf
    call Crlf

    mov  edx,OFFSET menu
    call WriteString
    call Crlf
    exit
main ENDP
END main
