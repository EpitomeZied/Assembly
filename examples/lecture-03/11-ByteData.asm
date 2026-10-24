TITLE BYTE, SBYTE and Byte Arrays       (11-ByteData.asm)
; Lecture 3, slides 35-39.
;   [name]  directive  initializer [, initializer] ...
; Variables are laid out one after another in memory.
INCLUDE Irvine32.inc
.data
value1 BYTE  'A'        ; character constant
value2 BYTE  0          ; smallest unsigned byte
value3 BYTE  255        ; largest unsigned byte
value4 SBYTE -128       ; smallest signed byte
value5 SBYTE +127       ; largest signed byte
value6 BYTE  ?          ; uninitialized byte

list1 BYTE 10,20,30,40          ; offset 0000-0003
list2 BYTE 10,20,30,40          ; offset 0004: 11 bytes in all,
      BYTE 50,60,70,80          ; a line without a name continues
      BYTE 81,82,83             ; the previous variable
list3 BYTE ?,32,41h,00100010b   ; offset 000F: mixed radixes
list4 BYTE 0Ah,20h,12h,22h
.code
main PROC
    ; value1 .. value6:  41 00 FF 80 7F 00
    mov  esi,OFFSET value1
    mov  ecx,6
    mov  ebx,TYPE BYTE
    call DumpMem

    ; list1 .. list4: 4 + 11 + 4 + 4 = 23 bytes (shown in hex)
    ; 0A 14 1E 28 | 0A 14 1E 28 32 3C 46 50 51 52 53 | 00 20 41 22 | 0A 20 12 22
    mov  esi,OFFSET list1
    mov  ecx,23
    mov  ebx,TYPE BYTE
    call DumpMem

    exit
main ENDP
END main
