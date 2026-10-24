TITLE Calculating Linear Addresses      (02-LinearAddress.asm)
; Lecture 2, slide 39: real-address mode segment:offset.
;   Linear address = Segment * 10h + Offset
; The program runs in protected mode and only does the arithmetic.
INCLUDE Irvine32.inc
.data
arrow BYTE "  ->  ",0
.code
main PROC
    mov  ax,08F1h       ; 08F1:0100 -> 09010h
    mov  bx,0100h
    call ShowLinear

    mov  ax,1000h       ; 1000:0020 -> 10020h
    mov  bx,0020h
    call ShowLinear

    mov  ax,2000h       ; 2000:0100 -> 20100h
    mov  bx,0100h
    call ShowLinear

    mov  ax,0FFFFh      ; FFFF:0000 -> FFFF0h
    mov  bx,0000h
    call ShowLinear

    mov  ax,0FFFFh      ; FFFF:000F -> FFFFFh, the highest address
    mov  bx,000Fh
    call ShowLinear
    exit
main ENDP

;----------------------------------------------------
ShowLinear PROC
; Displays  segment:offset  ->  linear address
; Receives: AX = segment, BX = offset
;----------------------------------------------------
    and  eax,0FFFFh     ; keep only the 16-bit segment
    and  ebx,0FFFFh     ; keep only the 16-bit offset
    mov  esi,eax        ; ESI = segment
    mov  edi,ebx        ; EDI = offset

    mov  ebx,TYPE WORD  ; WriteHexB: show 4 hex digits
    mov  eax,esi
    call WriteHexB      ; segment
    mov  al,':'
    call WriteChar
    mov  eax,edi
    call WriteHexB      ; offset

    mov  edx,OFFSET arrow
    call WriteString

    mov  eax,esi
    imul eax,10h        ; segment * 10h  (append a hex zero)
    add  eax,edi        ; + offset
    call WriteHex       ; linear address
    call Crlf
    ret
ShowLinear ENDP
END main
