---
title: ASM S01 — Representation
type: note
topic: teaching
subject: Assembly
section: S01
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S01 — Representation

> [!NOTE]
> Assembly, section 01. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** the bits mean nothing by themselves. **Interpretation** — signed, unsigned, character, address — is supplied by the instruction you choose.

**Board:**
1. `FF` as 255 and as −1, side by side. Same byte. Ask which it "is." The answer is: neither, until an instruction decides.
2. Hex ↔ binary in nibbles, fast drills until they stop using decimal as the middle step.
3. Two's complement by the invert-and-add-one rule, then the *why*: it makes subtraction reuse the adder.
4. Overflow vs carry, with a concrete 8-bit example where one is set and the other is not. This is the single most misunderstood point of the course — plant it here, harvest it in S04.

**Their turn:** convert a small table both ways; then give the signed and unsigned reading of four given bytes.

**Mistakes I expect:** sign-extending by padding zeros; thinking carry and overflow are the same; losing track of byte vs word width; forgetting that the high bit is only a sign *under a signed interpretation*.

-----
[← S00](ASM%20S00%20%E2%80%94%20Toolchain%20and%20the%20register%20window.md) · [All sections](../Assembly%20Sections.md) · [S02 →](ASM%20S02%20%E2%80%94%20The%20machine%20model.md)
