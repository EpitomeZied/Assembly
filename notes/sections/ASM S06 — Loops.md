---
title: ASM S06 — Loops
type: note
topic: teaching
subject: Assembly
section: S06
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S06 — Loops

> [!NOTE]
> Assembly, section 06. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** test at the **top** unless you can prove the body runs at least once — the zero-iteration case is where their loops die.

**Board:**
1. `LOOP` with `CX`, and its hidden trap: `CX = 0` on entry loops 65536 times. Draw it.
2. The same loop written manually with `DEC` + `JNZ`, so they see what `LOOP` hides.
3. While vs do-while as two label layouts, side by side.
4. Nested loops and the need to save the outer counter (first real motivation for the stack — set up S07).

**Live code:** sum 1..n; then run it with n = 0 to show the disaster; then fix it by testing first.

**Their turn:** count occurrences of a value in an array; then reverse an array in place.

**Mistakes I expect:** `CX` clobbered inside the body; forgetting `CX = 0` wraps; off-by-one in the count; nested loops sharing one counter; using `LOOP` while also modifying `CX` in the body.

-----
[← S05](ASM%20S05%20%E2%80%94%20Branching.md) · [All sections](../Assembly%20Sections.md) · [S07 →](ASM%20S07%20%E2%80%94%20The%20stack.md)
