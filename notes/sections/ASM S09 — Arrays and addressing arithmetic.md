---
title: ASM S09 — Arrays and addressing arithmetic
type: note
topic: teaching
subject: Assembly
section: S09
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S09 — Arrays and addressing arithmetic

> [!NOTE]
> Assembly, section 09. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** an array index is **multiplication by element size**. The CPU does not know the element type; you encode it in the addressing.

**Board:**
1. `[BASE + INDEX*SCALE + DISP]` decomposed, each part labeled with what it means in C terms (`arr[i]` for byte, word, dword arrays side by side).
2. The same array walked as bytes and as words, with the memory strip showing why the wrong size skips or splits elements.
3. 2D arrays in row-major order: `offset = (row * cols + col) * size`, derived, not given.

**Live code:** find the max in a word array; then the same loop with the wrong scale so they see it read garbage.

**Their turn:** sum a 2D array row by row, then column by column, and say which was harder and why.

**Mistakes I expect:** forgetting the scale factor; off-by-one at the array end (walking one element past); mixing byte and word accesses in one loop; hardcoding a length that the data does not have.

-----
[← S08](ASM%20S08%20%E2%80%94%20Procedures%20and%20the%20calling%20convention.md) · [All sections](../Assembly%20Sections.md) · [S10 →](ASM%20S10%20%E2%80%94%20Strings%20and%20IO.md)
