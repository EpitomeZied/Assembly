---
title: Assembly
type: note
topic: teaching
created: 2026-09-25
tags: [ta, teaching, assembly]
---
# Assembly — TA

| File | Use it when |
|---|---|
| [Assembly Sections](Assembly%20Sections.md) | **planning the term** — the 50-minute shape, the section map, stretch/fallback, checklists, and links to every section file |
| [sections/](sections/) folder | **preparing one section** — one file per section, `ASM S00` … `ASM S12`, each with board plan, live work, their turn, and expected mistakes |
| [Assembly Question Bank](Assembly%20Question%20Bank.md) | the night before and in the room — recap / exercise / exam-style questions, find-the-bug snippets |
| [Assembly Playbook](Assembly%20Playbook.md) | what is different about teaching *this* subject |
| TA Playbook (personal note; not included) | the universal part — grading, office hours, hard situations |

## The subject in one line

The course is not a syntax list. It is **"the machine has no idea what you meant"** — every abstraction they rely on (types, variables, scope, function calls) is revealed to be a convention someone implemented with registers and memory.

## Arc

Representation → the machine model → first program and toolchain → data movement and addressing → arithmetic and flags → branching → loops → stack → procedures and calling convention → arrays and strings → I/O and interrupts → review.

> [!NOTE]
> Written for **x86 (16/32-bit, MASM/emu8086-style)**. If the course uses MIPS or ARM, the section *shape* and every mistake list still hold — swap the mnemonics and the calling convention.
