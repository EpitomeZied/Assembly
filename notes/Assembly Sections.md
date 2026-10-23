---
title: Assembly Sections
type: note
topic: teaching
created: 2026-09-25
tags: [ta, teaching, assembly]
---
# Assembly — Sections

> [!NOTE]
> Delivery plan, one block per section: the idea to land, what goes on the board, what I single-step live, what they write, and the mistakes I know are coming.
> Companions: [Assembly Playbook](Assembly%20Playbook.md) · [Assembly Question Bank](Assembly%20Question%20Bank.md) · TA Playbook (personal note; not included).
> Mnemonics are x86; the shape holds for MIPS/ARM.

## Contents
- [How I run a section](#how-i-run-a-section)
- [Section map](#section-map)
- [S00 — Toolchain and the register window](sections/ASM%20S00%20%E2%80%94%20Toolchain%20and%20the%20register%20window.md)
- [S01 — Representation](sections/ASM%20S01%20%E2%80%94%20Representation.md)
- [S02 — The machine model](sections/ASM%20S02%20%E2%80%94%20The%20machine%20model.md)
- [S03 — Data movement and addressing modes](sections/ASM%20S03%20%E2%80%94%20Data%20movement%20and%20addressing%20modes.md)
- [S04 — Arithmetic and flags](sections/ASM%20S04%20%E2%80%94%20Arithmetic%20and%20flags.md)
- [S05 — Branching](sections/ASM%20S05%20%E2%80%94%20Branching.md)
- [S06 — Loops](sections/ASM%20S06%20%E2%80%94%20Loops.md)
- [S07 — The stack](sections/ASM%20S07%20%E2%80%94%20The%20stack.md)
- [S08 — Procedures and the calling convention](sections/ASM%20S08%20%E2%80%94%20Procedures%20and%20the%20calling%20convention.md)
- [S09 — Arrays and addressing arithmetic](sections/ASM%20S09%20%E2%80%94%20Arrays%20and%20addressing%20arithmetic.md)
- [S10 — Strings and I/O](sections/ASM%20S10%20%E2%80%94%20Strings%20and%20IO.md)
- [S11 — Debug clinic](sections/ASM%20S11%20%E2%80%94%20Debug%20clinic.md)
- [S12 — Review: from C to assembly and back](sections/ASM%20S12%20%E2%80%94%20Review%2C%20from%20C%20to%20assembly%20and%20back.md)
- [Stretch and fallback per section](#stretch-and-fallback-per-section)
- [The reference card they build themselves](#the-reference-card-they-build-themselves)
- [Prep checklist — the night before](#prep-checklist--the-night-before)
- [Reusable closing drills](#reusable-closing-drills)

-----

## How I run a section

| Time | Part | What I do |
|---|---|---|
| 0–5 | Recap | 3 questions on last section, cold-called, never graded |
| 5–15 | Board | The register/flag table and what this section's instructions do to it |
| 15–30 | Single-step | Type a short program and step it, narrating every register change |
| 30–45 | Their turn | They modify it; I walk the room instead of talking |
| 45–50 | Close | The one-sentence takeaway + the instruction to add to their reference card |

Rules I hold myself to:
- **The register and flag window is open, always.** If they cannot see the state, they are memorising, not learning.
- **Single-step, never run.** The final output teaches nothing; the transition does.
- **Comment every board line.** My board is the style their submissions will copy.
- **Say the operand size out loud** every time.
- **Break it on purpose once per section** — a size mismatch, a wrong flag, an unbalanced stack — and debug it in front of them.

-----

## Section map

| # | Section | Board focus | They leave able to |
|---|---|---|---|
| [00](sections/ASM%20S00%20%E2%80%94%20Toolchain%20and%20the%20register%20window.md) | Toolchain | assemble, link, step, watch | run and step their own program |
| [01](sections/ASM%20S01%20%E2%80%94%20Representation.md) | Representation | hex ↔ binary, two's complement | read a register value without converting |
| [02](sections/ASM%20S02%20%E2%80%94%20The%20machine%20model.md) | Machine model | registers, memory, fetch-execute | say where a value physically lives |
| [03](sections/ASM%20S03%20%E2%80%94%20Data%20movement%20and%20addressing%20modes.md) | MOV + addressing | the five addressing modes | pick the mode an access needs |
| [04](sections/ASM%20S04%20%E2%80%94%20Arithmetic%20and%20flags.md) | Arithmetic + flags | which flags each op sets | predict ZF/SF/CF/OF after an operation |
| [05](sections/ASM%20S05%20%E2%80%94%20Branching.md) | Branching | compare then jump | build an if/else from `CMP` + `Jcc` |
| [06](sections/ASM%20S06%20%E2%80%94%20Loops.md) | Loops | counted vs conditional | write a loop that survives zero iterations |
| [07](sections/ASM%20S07%20%E2%80%94%20The%20stack.md) | Stack | push/pop, SP direction | keep the stack balanced |
| [08](sections/ASM%20S08%20%E2%80%94%20Procedures%20and%20the%20calling%20convention.md) | Procedures | caller vs callee duties | write a procedure that preserves registers |
| [09](sections/ASM%20S09%20%E2%80%94%20Arrays%20and%20addressing%20arithmetic.md) | Arrays | base + index·scale | walk an array of any element size |
| [10](sections/ASM%20S10%20%E2%80%94%20Strings%20and%20IO.md) | Strings + I/O | buffers, terminators, interrupts | read input and print a number |
| [11](sections/ASM%20S11%20%E2%80%94%20Debug%20clinic.md) | Debug clinic | their bugs, on screen | diagnose from flags and SP, not by guessing |
| [12](sections/ASM%20S12%20%E2%80%94%20Review%2C%20from%20C%20to%20assembly%20and%20back.md) | Review | C ↔ assembly mapping | translate either direction |

-----

## The sections

One file each — open the file for the section you are about to teach.

- **S00** — [Toolchain and the register window](sections/ASM%20S00%20%E2%80%94%20Toolchain%20and%20the%20register%20window.md)
- **S01** — [Representation](sections/ASM%20S01%20%E2%80%94%20Representation.md)
- **S02** — [The machine model](sections/ASM%20S02%20%E2%80%94%20The%20machine%20model.md)
- **S03** — [Data movement and addressing modes](sections/ASM%20S03%20%E2%80%94%20Data%20movement%20and%20addressing%20modes.md)
- **S04** — [Arithmetic and flags](sections/ASM%20S04%20%E2%80%94%20Arithmetic%20and%20flags.md)
- **S05** — [Branching](sections/ASM%20S05%20%E2%80%94%20Branching.md)
- **S06** — [Loops](sections/ASM%20S06%20%E2%80%94%20Loops.md)
- **S07** — [The stack](sections/ASM%20S07%20%E2%80%94%20The%20stack.md)
- **S08** — [Procedures and the calling convention](sections/ASM%20S08%20%E2%80%94%20Procedures%20and%20the%20calling%20convention.md)
- **S09** — [Arrays and addressing arithmetic](sections/ASM%20S09%20%E2%80%94%20Arrays%20and%20addressing%20arithmetic.md)
- **S10** — [Strings and I/O](sections/ASM%20S10%20%E2%80%94%20Strings%20and%20IO.md)
- **S11** — [Debug clinic](sections/ASM%20S11%20%E2%80%94%20Debug%20clinic.md)
- **S12** — [Review: from C to assembly and back](sections/ASM%20S12%20%E2%80%94%20Review%2C%20from%20C%20to%20assembly%20and%20back.md)

-----

## Stretch and fallback per section

| # | If we are ahead | If we are behind |
|---|---|---|
| 01 | floating-point layout, briefly | hex ↔ binary drills only |
| 02 | pipelining and why IP prefetches | the CPU/memory drawing |
| 03 | `LEA` vs `MOV` and why `LEA` is loved | `MOV AX, BX` vs `MOV AX, [BX]` |
| 04 | `IMUL`/`IDIV` and signed pitfalls | one flag example, traced fully |
| 05 | jump tables as a switch | the signed/unsigned jump table |
| 06 | loop unrolling; why compilers do it | one loop that survives n = 0 |
| 07 | stack overflow and guard behaviour | push/pop with SP written each step |
| 08 | recursion in assembly (factorial) | `CALL`/`RET` and one preserved register |
| 09 | pointer arithmetic vs indexing | 1D array walk with the right scale |
| 10 | `REP` prefixes; buffered input | print one number correctly |

-----

## The reference card they build themselves

One index card, added to at the close of every section, allowed in the exam if the professor permits it. Building it *is* the revision — I never hand out a finished one.

Columns: **instruction · what it does in one clause · flags it touches · the mistake I made with it.**

That last column is the whole point: a personal, specific, remembered list beats any handout I could print.

-----

## Prep checklist — the night before

- [ ] The program I will type, typed once already and assembling cleanly.
- [ ] The register/flag table drawn on paper, with the values I expect at each step — so a surprise on screen is theirs, not mine.
- [ ] The deliberate bug chosen and rehearsed.
- [ ] Emulator/debugger open with the layout I want *before* the section starts. Tool fumbling costs credibility.
- [ ] Three recap questions written down.
- [ ] Their exercise solved under time — if it takes me 8 minutes, it takes them 30.

-----

## Reusable closing drills

- "Which flags did that instruction set, and which did it leave alone?"
- "Signed or unsigned — and which jump does that force?"
- "What is in SP right now, and what is it pointing at?"
- "Byte, word, or dword? Say it before you write it."
- "Trace this line for me and tell me what changed."
- "Predict the register, then step. Were you right?"
