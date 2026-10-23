---
title: ASM S08 — Procedures and the calling convention
type: note
topic: teaching
subject: Assembly
section: S08
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S08 — Procedures and the calling convention

> [!NOTE]
> Assembly, section 08. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** a function is a **convention**, not a language feature. Nothing enforces it — so violating it produces silent corruption, not an error.

**Board:**
1. `CALL`/`RET` in terms of S07: `CALL` pushes the return address, `RET` pops it. Show it on the stack drawing.
2. The contract, written out and pinned for the term: which registers the caller preserves, which the callee preserves, where arguments go, where the result comes back.
3. Passing by value vs by address (pointer), with the memory drawing.
4. The stack frame with `BP` if the course covers it: arguments above, locals below, and why `BP` exists when `SP` moves.

**Live code:** a procedure that computes a value and corrupts a caller register — show the corruption, then fix it with push/pop at the boundary.

**Their turn:** write `strlen` as a procedure honouring the contract; then a procedure that takes an array address and length.

**Mistakes I expect:** clobbering caller registers; unbalanced stack before `RET`; returning a value in a register the caller does not expect; reading arguments at the wrong offset; recursion without saving locals.

-----
[← S07](ASM%20S07%20%E2%80%94%20The%20stack.md) · [All sections](../Assembly%20Sections.md) · [S09 →](ASM%20S09%20%E2%80%94%20Arrays%20and%20addressing%20arithmetic.md)
