TITLE Display A times B plus C          (01-ThreeLevels.asm)
; Lecture 1, slides 3-4: the same task at three levels.
;   C++      : cout << (A * B + C);
;   Assembly : the four instructions below
;   Machine  : A1 ... / F7 25 ... / 03 05 ... / E8 ...
INCLUDE Irvine32.inc
.data
valA DWORD 5          ; "C" is reserved in MASM, so the
valB DWORD 3          ; variables are named valA, valB, valC
valC DWORD 4
.code
main PROC
    mov  eax,valA       ; EAX = A            = 5
    mul  valB           ; EDX:EAX = EAX * B  = 15
    add  eax,valC       ; EAX = A * B + C    = 19
    call WriteInt       ; display EAX: +19
    call Crlf
    exit
main ENDP
END main
