TITLE Instruction Formats               (05-InstructionFormats.asm)
; Lecture 3, slides 16-22:
;   [label:]  mnemonic  [operands]  [; comment]
INCLUDE Irvine32.inc
.data
myByte BYTE 30
.code
main PROC
    mov  eax,10         ; Move 10 into EAX
    mov  ebx,4
    mov  ecx,6

    stc                 ; no operands     - set the Carry flag
    inc  eax            ; one operand     - register         EAX = 11
    inc  myByte         ; one operand     - memory           myByte = 31
    add  ebx,ecx        ; two operands    - register, register  EBX = 10 (0Ah)
    sub  myByte,25      ; two operands    - memory, constant    myByte = 6
    add  eax,36 * 25    ; two operands    - register, constant expression
                        ;                                    EAX = 11 + 900 = 911 (38Fh)
    call DumpRegs       ; CF = 0 here: ADD cleared the carry set by STC

    imul eax,ebx,5      ; three operands  - EAX = EBX * 5 = 50 (32h)
    call DumpRegs

    mov  esi,OFFSET myByte
    mov  ecx,1
    mov  ebx,TYPE myByte
    call DumpMem        ; myByte = 06
    exit
main ENDP
END main
