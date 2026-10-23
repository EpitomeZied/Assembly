---
title: Assembly Question Bank
type: note
topic: teaching
created: 2026-09-25
tags: [ta, teaching, assembly]
---
# Assembly — Question Bank

> [!NOTE]
> Questions only; solutions are not included.
> Three kinds per topic: **Recap** (first 5 minutes, cold-called, ungraded) · **Exercise** (their turn, in-section) · **Exam-style**.
> Companions: [Assembly Sections](Assembly%20Sections.md) · [Assembly Playbook](Assembly%20Playbook.md) · TA Playbook (personal note; not included). Mnemonics are x86.

## Contents
- [How to use this](#how-to-use-this)
- [Representation](#representation)
- [Machine model](#machine-model)
- [Data movement and addressing](#data-movement-and-addressing)
- [Arithmetic and flags](#arithmetic-and-flags)
- [Branching](#branching)
- [Loops](#loops)
- [Stack](#stack)
- [Procedures](#procedures)
- [Arrays](#arrays)
- [Strings and I/O](#strings-and-io)
- [Trace-it questions](#trace-it-questions)
- [Find the bug snippets](#find-the-bug-snippets)

-----

## How to use this

- Pick **three** recap questions the night before and write them down.
- Favour questions answerable in one sentence or one hex value — I need eight answers in five minutes.
- The trace questions are the best predictor of exam performance. Run one every single section, even when time is short.
- Anything missed twice becomes a row in the misconception log in TA Playbook (personal note; not included).

-----

## Representation

**Recap**
1. What is `FF` as unsigned? As signed?
2. Two's complement of `0000 0101`?
3. How do you sign-extend a negative byte to a word?
4. CF vs OF, in one sentence each.
5. How many bytes in a word? A dword?

**Exercise**
1. Convert `1011 0110` to hex and to both decimal readings.
2. Add `7F + 01` as bytes; which flag is set, and is the signed answer wrong?
3. Add `FF + 01` as bytes; which flag now?

**Exam-style**
1. Give a byte addition where CF and OF are both set, and explain both.
2. Represent −1, −128, and 127 as signed bytes; say which value has no positive counterpart.
3. Why does two's complement let one adder do subtraction?

-----

## Machine model

**Recap**
1. Where does a value live while being computed on?
2. `AH`, `AL`, `AX` — relationship?
3. What does IP hold?
4. What does SP point at?
5. Are there variables in assembly?

**Exercise**
1. `MOV AX, 1234h` — what is in `AH`? In `AL`?
2. Set `AL` to 5 without disturbing `AH`; prove it in the register window.
3. Write the smallest program that terminates cleanly; explain each line.

**Exam-style**
1. Describe fetch–decode–execute for one `ADD` instruction, naming what changes.
2. Given a memory dump and a base address, say what a `MOV AX, [1002h]` loads — and mind the byte order.
3. Why do registers exist at all if memory can hold values?

-----

## Data movement and addressing

**Recap**
1. Does `MOV` alter the source?
2. `MOV AX, BX` vs `MOV AX, [BX]`?
3. Name the five addressing modes.
4. Why is `MOV [SI], [DI]` illegal?
5. What does `LEA` compute?

**Exercise**
1. Load a word from an array's third element using base+index.
2. Swap two memory words using one register; then using the stack only.
3. Write four `MOV`s that fail to assemble and say why each fails.

**Exam-style**
1. For `[BX + SI + 4]`, compute the effective address from given register values.
2. Rewrite three C expressions as the matching addressing modes.
3. When is `LEA` better than `MOV` + `ADD`?

-----

## Arithmetic and flags

**Recap**
1. Which register pair does unsigned `MUL` use implicitly?
2. What must `DX` be before an unsigned word `DIV`?
3. Does `INC` affect CF?
4. After `SUB AX, AX`, which flag is set?
5. Where is the remainder after a word `DIV`?

**Exercise**
1. Compute `(a + b) / 2` for two words; handle the remainder.
2. Sum an array of bytes into a word and explain the widening.
3. Divide by zero on purpose; describe what the machine does.

**Exam-style**
1. Given three instructions, state ZF, SF, CF, OF after each.
2. Multiply a word by 10 using only shifts and adds; compare to `MUL`.
3. Why is `NEG` on `80h` (as a signed byte) a problem?

-----

## Branching

**Recap**
1. What does `CMP` actually do?
2. `JG` vs `JA` — when do they disagree?
3. After `CMP AX, BX`, which flag does `JE` read?
4. What is missing if the `then` block falls into the `else` block?
5. Can you branch on flags set two instructions earlier?

**Exercise**
1. Max of three numbers; then do it again treating them as unsigned and compare results.
2. Classify a value as negative / zero / positive with no duplicated code.
3. Implement `if (a >= b && c != 0)` with correct short-circuiting.

**Exam-style**
1. Given code using `JB` on signed data, say what input produces a wrong answer and why.
2. Translate a C `switch` with 4 cases; then say what a jump table would buy.
3. Trace a branch-heavy 10-line program and state which path runs.

-----

## Loops

**Recap**
1. Which register does `LOOP` decrement?
2. What if `CX = 0` when `LOOP` is reached?
3. Where should the test go for a loop that may run zero times?
4. What breaks if the body uses `CX`?
5. `DEC` + `JNZ` — what does that pair replace?

**Exercise**
1. Sum 1..n; verify n = 0 and n = 1.
2. Count occurrences of a value in an array.
3. Reverse an array in place; state the stopping condition.
4. Nested loop printing a triangle; save the outer counter correctly.

**Exam-style**
1. A given loop is off by one. Identify the exact instruction and the input that exposes it.
2. Rewrite a `LOOP` version as a top-tested while loop and say what it now handles correctly.
3. Trace a nested loop and give the total number of body executions.

-----

## Stack

**Recap**
1. Which direction does the stack grow?
2. After one `PUSH AX`, how has SP changed?
3. Push order vs pop order?
4. What does an extra `PUSH` before `RET` do?
5. Does `POP` erase the memory?

**Exercise**
1. Save and restore four registers around a block, in the correct order.
2. Swap two registers using only the stack.
3. Push three values, pop them into different registers, predict the mapping before running.

**Exam-style**
1. Given SP and a sequence of pushes/pops, give SP and the top value at the end.
2. Explain precisely why unbalanced push/pop breaks `RET`, using the stack layout.
3. Why can the stack be used to reverse a sequence? Connect it to the call stack.

-----

## Procedures

**Recap**
1. What does `CALL` push?
2. Who preserves which registers, in this course's convention?
3. Where is a return value conventionally placed?
4. What must be true of SP at `RET`?
5. Why does `BP` exist when we already have SP?

**Exercise**
1. `strlen` as a procedure honouring the register contract.
2. A procedure taking an array address and length, returning the max in `AX`.
3. A procedure that deliberately clobbers a caller register; show the corruption at the call site, then fix it.

**Exam-style**
1. Write `factorial` recursively in assembly and say what the stack holds at depth 3.
2. Given a stack frame diagram, state the offsets of two arguments and one local.
3. Pass an argument by value and by address; contrast what the callee can do in each case.

-----

## Arrays

**Recap**
1. Address of `arr[i]` for word elements?
2. What does the scale factor encode?
3. Row-major offset for `a[r][c]`?
4. What happens if you walk a word array with a byte step?
5. How does the CPU know where the array ends?

**Exercise**
1. Max of a word array; then of a byte array — note both changes.
2. Copy an array forwards, then backwards; say when direction matters.
3. Sum a 2D array by rows and by columns.

**Exam-style**
1. Given a wrong scale factor in a loop, say exactly what it reads and why the output looks plausible.
2. Compute the address of `a[3][5]` for given dimensions and element size.
3. Write a loop over a `struct`-like record array, accessing one field by displacement.

-----

## Strings and I/O

**Recap**
1. How does the machine know a string ended?
2. What byte is the character `'7'`?
3. Convert a digit character to its value?
4. Why does printing a small number sometimes produce a weird symbol?
5. What does the direction flag control?

**Exercise**
1. Read a string, print it back.
2. Reverse a string in place.
3. Count vowels, case-insensitively.
4. Convert a multi-digit input string to a number, then print the number back.

**Exam-style**
1. Convert a word value to decimal digits for output; explain the repeated division.
2. Compare two strings and report which is greater; state the convention you used.
3. A given routine overruns its buffer. Identify the missing check.

-----

## Trace-it questions

Run one every section. Give the code, they fill the table — same columns as the board: `AX BX CX DX | SP | ZF SF CF OF`.

1. Four arithmetic instructions crossing a signed boundary (`7F + 01`).
2. `CMP` plus a wrongly-signed jump on `FFh` — they must reach the wrong branch honestly, then explain it.
3. A `LOOP` entered with `CX = 0`.
4. Three pushes and two pops, SP tracked at every step.
5. A `CALL` into a procedure that clobbers `BX`, with the caller's expectation written above.
6. A byte `MOV` into a location a word was stored in.

> [!TIP]
> The exam asks them to trace. Nothing prepares them for that except tracing, weekly, with the flag columns filled in.

-----

## Find the bug snippets

Projected on screen, 60 seconds each, hands down until time is up.

**B1**
```asm
MOV CX, 0
loopStart:
    ADD AX, [SI]
    ADD SI, 2
LOOP loopStart          ; sum a list
```

**B2**
```asm
MOV AX, 1000
MOV BX, 10
DIV BX                  ; AX = AX / BX
```

**B3**
```asm
CMP AL, BL              ; AL = FFh, BL = 01h
JA  bigger              ; jump if AL is greater (values are signed)
```

**B4**
```asm
myProc:
    PUSH AX
    PUSH BX
    ; ... work ...
    POP  AX
    POP  BX
    RET
```

**B5**
```asm
MOV SI, OFFSET arr      ; arr is an array of WORDs
MOV CX, 10
next:
    MOV AL, [SI]
    INC SI
LOOP next
```

**B6**
```asm
MOV AL, 5
ADD AL, '0'
MOV DL, AL
; print the digit 5
MOV DL, 5
INT 21h
```

**B7**
```asm
outer:
    MOV CX, 3
inner:
    ; ... work ...
    LOOP inner
LOOP outer              ; 3 x 3 nested loop
```

**B8**
```asm
MOV AX, 0FFFFh
INC AX
JC  overflowed          ; detect the wrap
```
