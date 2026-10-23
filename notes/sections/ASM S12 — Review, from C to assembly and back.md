---
title: ASM S12 — Review, from C to assembly and back
type: note
topic: teaching
subject: Assembly
section: S12
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S12 — Review: from C to assembly and back

> [!NOTE]
> Assembly, section 12. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** every construct they use in a high-level language is *something someone implemented here*.

**Board — the mapping table, built live with them:**

| C | Assembly reality |
|---|---|
| local variable | register, or a slot on the stack frame |
| `if (a > b)` | `CMP` + the **correctly signed** `Jcc` |
| `while` / `for` | label + test at the top + jump back |
| `arr[i]` | `[base + i*size]` |
| function call | `CALL`, the register contract, `RET` |
| pass by pointer | pass an address, dereference with brackets |
| `struct` field | base address + fixed displacement |
| `char` vs `int` | operand size — byte vs word vs dword |
| recursion | stack frames, one per call |

**Their turn:** I give a 6-line C function, they write the assembly; then I give assembly, they write the C. Both directions, because the exam asks both.

**Close:** "There is no magic anywhere above this layer. Everything you will use for the rest of your degree is this, with names on it."

-----
[← S11](ASM%20S11%20%E2%80%94%20Debug%20clinic.md) · [All sections](../Assembly%20Sections.md) · —
