# Assembly Language Notes

My study notes, teaching plans, practice questions, and practical examples for assembly language, with x86, 8086, and IA-32 material. The collection includes Markdown notes and ready-to-read PDFs. Editable Typst sources are kept locally and excluded from Git.

## Start here

- [Course overview](notes/Assembly.md)
- [Section guide, S00–S12](notes/Assembly%20Sections.md) — toolchain, representation, registers, arithmetic, branches, loops, stack, procedures, arrays, and I/O.
- [Question bank](notes/Assembly%20Question%20Bank.md)
- [Lecture 2: x86 Processor Architecture](lectures/02-x86-processor-architecture/lecture-02.pdf)
- [Quiz 1 — question papers](quizzes/quiz-01/)
- [Assembly code examples](examples/)

## Repository guide

| Folder | Contents |
| --- | --- |
| [notes/](notes/) | Course overview, section plans, question bank, and teaching playbook |
| [lectures/](lectures/) | Lectures 1–3 and practice sheets |
| [quizzes/](quizzes/) | Quiz 1 models A–G, questions only |
| [examples/](examples/) | MASM / Irvine32 addition and subtraction programs |

## Reading and building

Open the Markdown files directly on GitHub, or select a PDF to read or download. No build is needed to use the existing PDFs. Practice sheets, quizzes, and the question bank are published without answer keys. Lecture explanations and instructional code examples are included.

The [lecture guide](lectures/) lists the lectures and practice sheets in order. If you have the local Typst sources, it also includes build instructions.

The [code examples](examples/) require a Windows 32-bit MASM / Irvine32 setup. They are separate from the Typst documents.

## About this collection

Some notes are written from a teaching-assistant perspective. References to the personal **TA Playbook** refer to a separate note that is not included here. Original course material and attributions are retained with their respective collections.

Student attendance, grade records, and teacher answer copies are kept locally in `private/`, which is excluded by `.gitignore`. Typst sources (`.typ`), compiled executables, and object files are also excluded; the readable PDFs and assembly sources are included. If uploading files through GitHub's website, omit `private/`, `.typ`, `.exe`, and `.obj` files manually.
