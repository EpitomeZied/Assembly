---
title: ASM S11 — Debug clinic
type: note
topic: teaching
subject: Assembly
section: S11
created: 2026-09-25
tags: [ta, teaching, section, assembly]
---
# S11 — Debug clinic

> [!NOTE]
> Assembly, section 11. Index: [Assembly Sections](../Assembly%20Sections.md) · questions: [Assembly Question Bank](../Assembly%20Question%20Bank.md) · teaching notes: [Assembly Playbook](../Assembly%20Playbook.md).

**One idea to land:** I am not re-teaching the term. We diagnose **their** programs, live, on screen.

**How it runs — no slides:**
1. A week ahead I collect their broken programs. I pick four that fail for *different* reasons and anonymise them.
2. For each: read the symptom first, form a hypothesis out loud, *then* step. Model the discipline — the anti-pattern I am killing is changing lines at random until the output looks right.
3. The bug taxonomy on the board, and which window reveals each: wrong flag → the flags window; unbalanced stack → SP before/after; wrong size → the memory dump; wrong addressing → the effective address.
4. Last 10 minutes: exam mechanics — a paper trace must show intermediate values; a bare final answer earns almost nothing.

**Their turn:** a timed trace of an unfamiliar 12-line program, then peer-marking with my rubric.

-----
[← S10](ASM%20S10%20%E2%80%94%20Strings%20and%20IO.md) · [All sections](../Assembly%20Sections.md) · [S12 →](ASM%20S12%20%E2%80%94%20Review%2C%20from%20C%20to%20assembly%20and%20back.md)
