TITLE Data Labels and Code Labels       (04-Labels.asm)
; Lecture 3, slides 18-19.
;   Data label: no colon. Marks the location of a variable.
;   Code label: followed by a colon. Target of jumps and loops.
INCLUDE Irvine32.inc
.data
count  DWORD 100
number DWORD 100        ; store 100 in memory
.code
main PROC
    mov  eax,0
    mov  ebx,7
    jmp  target         ; jump forward to the label
    mov  eax,0FFFFh     ; skipped: never executed
target:
    mov  ax,bx          ; AX = 7
    call DumpRegs

    mov  eax,number     ; EAX = 100
subtract: sub eax,5     ; subtract 5 from EAX -> 95  (5Fh)
    add  eax,count      ; EAX = 195 (C3h)
    call DumpRegs
    ; A "jmp target" placed here would jump backward and
    ; repeat the code above forever, so it is left out.
    exit
main ENDP
END main
