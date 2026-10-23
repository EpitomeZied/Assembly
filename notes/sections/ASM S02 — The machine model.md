---
title: ASM S02 — The machine model
type: note
topic: teaching
subject: Assembly
section: S02
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S02 — The machine model

> [!NOTE]
> Assembly, section 02. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** there are no variables. There are registers, and there are addresses.

**Board:**
1. Draw the CPU box: general registers, IP, SP, flags — then memory as a numbered strip beside it. Everything for the rest of the term is drawn on this picture.
2. `AX` / `AH` / `AL` as views of one 16-bit register (and `EAX` if 32-bit) — write a value and show all three readings.
3. Fetch–decode–execute, once, with IP advancing.
4. Segments/offsets if the course uses real mode — plainly, without mystification.

**Their turn:** given a 3-instruction program, say what is in each register after each instruction, without running it. Then run it and compare.

**Mistakes I expect:** treating a register as a named variable with a type; expecting `AH` and `AL` to be independent; assuming memory is where computation happens.

-----
[← S01](ASM%20S01%20%E2%80%94%20Representation.md) · [All sections](../Assembly%20Sections.md) · [S03 →](ASM%20S03%20%E2%80%94%20Data%20movement%20and%20addressing%20modes.md)
