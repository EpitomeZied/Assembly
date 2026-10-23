# Assembly lectures

Lecture notes based on Dr. Bassem’s course material. Read the lectures in numerical order, then use the sheets for practice.

## Lectures

| Lecture | Topic | PDF |
| --- | --- | --- |
| 01 | Introduction and Data Representation | [Read lecture](01-introduction-and-data-representation/lecture-01.pdf) |
| 02 | x86 Processor Architecture | [Read lecture](02-x86-processor-architecture/lecture-02.pdf) |
| 03 | Assembly Language Fundamentals | [Read lecture](03-assembly-language-fundamentals/lecture-03.pdf) |

Lecture 1 covers language levels, translation, number systems, and digital logic. Lecture 2 covers processor design, registers, flags, and memory. Lecture 3 covers assembly syntax, first programs, data definitions, and symbolic constants.

## Practice sheets

| Sheet | Topics | Questions |
| --- | --- | --- |
| 01 | Language levels, number systems, registers, and addressing | [Sheet](sheets/01/sheet-01.pdf) |
| 02 | Registers, data definitions, DUP, flags, and assembly syntax | [Sheet](sheets/02/sheet-02.pdf) |

These are the question-only editions. See the [question bank](../notes/Assembly%20Question%20Bank.md) and [Quiz 1 papers](../quizzes/quiz-01/) for additional practice.

## Local Typst sources

The local `.typ` source sits beside its corresponding PDF. All five documents use `lib.typ` in this directory. Typst sources are ignored by Git, so the published repository contains the PDFs.

If you have the local sources, run these commands from the repository root:

```sh
cd lectures
typst compile --root . 01-introduction-and-data-representation/lecture-01.typ
typst compile --root . 02-x86-processor-architecture/lecture-02.typ
typst compile --root . 03-assembly-language-fundamentals/lecture-03.typ
typst compile --root . sheets/01/sheet-01.typ
typst compile --root . sheets/02/sheet-02.typ
```

`--root .` allows each source to import the shared `lib.typ` from the lectures directory.
