---
title: ASM S04 — Arithmetic and flags
type: note
topic: teaching
subject: Assembly
section: S04
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S04 — Arithmetic and flags

> [!NOTE]
> Assembly, section 04. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** arithmetic instructions have a **side effect that is the real product**: the flags. Branching consumes them.

**Board:**
1. `ADD`, `SUB`, `INC`/`DEC`, `MUL`/`DIV` — and for each, *which flags it sets*, and for `MUL`/`DIV`, the implicit operands (this trips everyone).
2. Three worked 8-bit examples: one setting CF only, one setting OF only, one setting both. Then the rule stated plainly: **CF is for unsigned overflow, OF is for signed.**
3. `INC` does not affect CF — write it down, it will bite them in a loop.
4. `DIV`: the dividend layout and the divide-by-zero interrupt.

**Live code:** compute an average; show the remainder in the right register; then divide by zero on purpose and watch the fault.

**Their turn:** sum an array of bytes without overflowing, then explain what they had to widen and why.

**Mistakes I expect:** ignoring the implicit `AX`/`DX` operands of `MUL`/`DIV`; forgetting `DX` must be cleared before an unsigned `DIV`; confusing CF and OF; assuming flags persist across unrelated instructions.

-----
[← S03](ASM%20S03%20%E2%80%94%20Data%20movement%20and%20addressing%20modes.md) · [All sections](../Assembly%20Sections.md) · [S05 →](ASM%20S05%20%E2%80%94%20Branching.md)
