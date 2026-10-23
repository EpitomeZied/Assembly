---
title: ASM S10 — Strings and IO
type: note
topic: teaching
subject: Assembly
section: S10
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S10 — Strings and I/O

> [!NOTE]
> Assembly, section 10. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** a string is a buffer plus a **convention about where it ends**. The machine will happily read past it.

**Board:**
1. Terminator conventions ('$', NUL, or a length byte — whichever the course uses), drawn in memory.
2. Character vs value: `'5'` is `0x35`, not `5`. Then the conversion both directions — this is where most of their I/O bugs live.
3. The I/O mechanism of the course (interrupt service or library call): the register setup, stated as a recipe, pinned.
4. String primitives (`MOVSB`, `CMPSB`, with `SI`/`DI`/direction flag) if covered — and what they hide.

**Live code:** read a string, print it; then convert digits to a number and add them; then print a multi-digit result.

**Their turn:** reverse a string in place; count vowels; convert a number to its decimal digits for printing.

**Mistakes I expect:** printing a number and getting a control character; forgetting the terminator when writing a new string; buffer overrun past the end; forgetting to clear the direction flag; ASCII arithmetic done without the `'0'` offset.

-----
[← S09](ASM%20S09%20%E2%80%94%20Arrays%20and%20addressing%20arithmetic.md) · [All sections](../Assembly%20Sections.md) · [S11 →](ASM%20S11%20%E2%80%94%20Debug%20clinic.md)
