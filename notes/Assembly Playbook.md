---
title: Assembly Playbook
type: note
topic: teaching
created: 2026-09-25
tags: [ta, teaching, assembly]
---
# Assembly — Playbook delta

> [!NOTE]
> The universal TA method lives in TA Playbook (personal note; not included). This file is only what is **different about this subject**.

## What makes this subject hard for them

Not difficulty — **volume of detail with no abstraction to hide it in**. In C, one line does one thing. Here one line does one *tiny* thing, and the meaning lives in the accumulated state. Two consequences:

- **The debugger is the textbook.** Nothing in this course is taught better by explanation than by single-stepping with registers and flags visible on screen. If I am talking and the register window is not open, I am wasting the section.
- **They cannot see the state, so they guess.** The whole teaching strategy is *make the state visible*: a register table on the board, updated line by line, in the same layout the emulator shows.

## Section-specific moves

- **A register/flag table on the board for every trace**, columns fixed all term: `AX BX CX DX | SI DI SP | ZF SF CF OF`. Same layout as the tool, so their eyes transfer.
- **Single-step live, never run.** Watching the value change is the lesson; the final output is not.
- **Hex and binary on the board next to every decimal value** for the first four sections, until they stop converting in their heads and start reading hex natively.
- **One instruction, one sentence.** "`MOV` copies, it does not move. Nothing is removed from the source." Tiny, repeated corrections of the mental model.
- **Say the size every time**: byte, word, dword. Most mysterious bugs in this course are size mismatches.
- **Comment every line I write on the board** — in assembly, code without comments is unreadable even to its author, and my board sets the standard their submissions will imitate.

## Grading, subject-specific

Use the 10-point rubric in TA Playbook (personal note; not included), adapted:

- **Comments are graded, not decoration** — I state a weight for them (1 of 10) in advance. An uncommented 60-line procedure is unreviewable, and saying so is part of the education.
- **Standing deductions, published:** clobbering a register the caller owned −1, unbalanced push/pop (or a `RET` with a dirty stack) −1, wrong operand size −1, testing the wrong flag after a comparison −1.
- **Distinguish "wrong" from "fragile."** Code that works on the given input but breaks on zero iterations or an empty string is a real deduction — but comment it as a *design* note, not as a mistake.
- **Give marks for correct register discipline even when the logic is wrong.** It is the habit I most want to reward.
- **On paper:** a trace with no intermediate register values earns almost nothing, and they must hear that before the exam.

## The question I ask all term

> "Which flags does this instruction touch, and which branch are you betting on?"

Almost every non-obvious bug in this course lives in the gap between those two things.

## Misconception log — seeded

Format and rules in TA Playbook (personal note; not included). Add a row the same day it happens.

| Misconception | Where it shows up | The move that fixes it |
|---|---|---|
| "`MOV` moves — the source is emptied" | S03 | watch the source register in the debugger |
| "A register is a typed variable" | S02 | `AH`/`AL`/`AX` written and read as three views |
| "Carry and overflow are the same flag" | S01 → S04 | `7F + 01` and `FF + 01` side by side |
| "`INC` sets the carry flag" | S06 loops | `INC` on `FFFFh`, flags window open |
| "`JA` and `JG` are interchangeable" | S05 | `CMP` on `FFh`, both jumps traced |
| "`MUL`/`DIV` take only what I wrote" | S04 | a `DIV` with dirty `DX` |
| "Popping erases the value in memory" | S07 | the memory dump after a pop |
| "A procedure protects the caller's registers" | S08 | a callee that clobbers `BX`, with the caller's value shown |
| "`MOV DL, 5` prints 5" | S10 | print it, then print `'5'` |

**The layer usually missing underneath:** number representation — hex, two's complement, and operand size. Diagnose there before re-teaching the instruction.
