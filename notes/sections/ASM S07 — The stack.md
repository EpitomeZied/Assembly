---
title: ASM S07 — The stack
type: note
topic: teaching
subject: Assembly
section: S07
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S07 — The stack

> [!NOTE]
> Assembly, section 07. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** the stack grows **downward**, `SP` always points at the top item, and every push owes a pop.

**Board:**
1. Memory strip with SP marked; push twice, pop once, redrawing SP each time and writing its numeric value. The number going *down* on push is the thing they must see.
2. Push/pop sizes and why order reverses on the way out.
3. What an unbalanced stack does to `RET` — draw the wrong address being jumped to. This makes stack discipline feel dangerous, which it is.

**Live code:** save and restore registers around a block; then deliberately pop one too few and watch `RET` jump into nowhere.

**Their turn:** swap two registers using only the stack; then reverse a sequence of pushed values.

**Mistakes I expect:** push/pop order reversed when restoring; pushing in a loop without popping; mismatched operand sizes; assuming a popped value is erased from memory.

-----
[← S06](ASM%20S06%20%E2%80%94%20Loops.md) · [All sections](../Assembly%20Sections.md) · [S08 →](ASM%20S08%20%E2%80%94%20Procedures%20and%20the%20calling%20convention.md)
