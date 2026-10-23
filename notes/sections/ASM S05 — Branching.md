---
title: ASM S05 — Branching
type: note
topic: teaching
subject: Assembly
section: S05
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S05 — Branching

> [!NOTE]
> Assembly, section 05. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** `CMP` is a subtraction that throws away the result and **keeps the flags**. The jump you choose declares whether you meant signed or unsigned.

**Board:**
1. `CMP AX, BX` then the table: `JG/JL/JGE/JLE` (signed) beside `JA/JB/JAE/JBE` (unsigned). Same bits, different verdicts — build the pair of examples that disagree.
2. An if/else skeleton with labels, then if/else-if/else, drawn as a flow diagram beside the code.
3. Label discipline and why fallthrough bugs are invisible.

**Live code:** max of three numbers; then change signed jumps to unsigned and show the wrong answer appear with `FF` in play.

**Their turn:** classify a number as negative/zero/positive; then a three-way branch with no duplicated code.

**Mistakes I expect:** signed jumps on unsigned data and vice versa (the classic); reversed comparison direction; missing the unconditional jump at the end of the `then` block; testing flags after an instruction that did not set them.

-----
[← S04](ASM%20S04%20%E2%80%94%20Arithmetic%20and%20flags.md) · [All sections](../Assembly%20Sections.md) · [S06 →](ASM%20S06%20%E2%80%94%20Loops.md)
