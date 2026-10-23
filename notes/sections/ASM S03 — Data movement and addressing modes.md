---
title: ASM S03 — Data movement and addressing modes
type: note
topic: teaching
subject: Assembly
section: S03
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S03 — Data movement and addressing modes

> [!NOTE]
> Assembly, section 03. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** `MOV` **copies**; the source is unchanged. And the brackets mean *the value at that address*, not the address.

**Board:**
1. All five modes on one line each, with a drawing of what the CPU actually computes: immediate, register, direct, register-indirect, base+index(+displacement).
2. `MOV AX, BX` vs `MOV AX, [BX]` drawn as two different arrows on the memory strip. Spend real time here — this distinction carries the next six sections.
3. The illegal combinations (memory→memory, size mismatch) and the error text each produces, so they can recognise it later.

**Live code:** load, copy, store; then deliberately write `MOV AL, [BX]` where a word was intended and show the truncation.

**Their turn:** swap two memory locations using one register, then using none (via the stack — forward reference to S07).

**Mistakes I expect:** memory-to-memory moves; brackets omitted or added by accident; size mismatches; expecting `MOV` to clear the source.

-----
[← S02](ASM%20S02%20%E2%80%94%20The%20machine%20model.md) · [All sections](../Assembly%20Sections.md) · [S04 →](ASM%20S04%20%E2%80%94%20Arithmetic%20and%20flags.md)
