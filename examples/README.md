# Assembly examples

Every code example from Lectures 1–3, written out as complete programs and sorted by lecture. Each file names the slides it comes from. Snippets that were only fragments on the slides now have the `.data`/`.code` setup and output calls (`DumpRegs`, `DumpMem`, `WriteDec` …) needed to see the result.

## Lecture 1 — Introduction and Data Representation

| File | Slides | Shows |
| --- | --- | --- |
| [01-ThreeLevels.asm](lecture-01/01-ThreeLevels.asm) | 3–4 | `cout << (A * B + C)` in assembly: `mov`, `mul`, `add`, `WriteInt` |
| [02-AssignD.asm](lecture-01/02-AssignD.asm) | 20–23 | `D = A * B + 10`: one statement, four instructions |
| [03-BinaryAddition.asm](lecture-01/03-BinaryAddition.asm) | 27 | `4 + 7 = 11` printed in binary |

## Lecture 2 — x86 Processor Architecture

| File | Slides | Shows |
| --- | --- | --- |
| [01-ZeroFlag.asm](lecture-02/01-ZeroFlag.asm) | 31 | How `sub`, `mov` and `inc` set or leave ZF |
| [02-LinearAddress.asm](lecture-02/02-LinearAddress.asm) | 39 | Segment × 10h + offset for `08F1:0100`, `1000:0020`, `FFFF:000F` … |

## Lecture 3 — Assembly Language Fundamentals

| File | Slides | Shows |
| --- | --- | --- |
| [01-IntegerConstants.asm](lecture-03/01-IntegerConstants.asm) | 4 | Radixes `h`, `d`, `b`, `o`, `q`; the leading `0` on hex |
| [02-IntegerExpressions.asm](lecture-03/02-IntegerExpressions.asm) | 5–6 | Operator precedence, `/` and `MOD` |
| [03-CharacterAndStringConstants.asm](lecture-03/03-CharacterAndStringConstants.asm) | 7–8 | Characters, strings, embedded quotes, real constants |
| [04-Labels.asm](lecture-03/04-Labels.asm) | 18–19 | Data labels and code labels, `jmp` |
| [05-InstructionFormats.asm](lecture-03/05-InstructionFormats.asm) | 16–22 | Zero-, one-, two- and three-operand instructions |
| [06-Comments.asm](lecture-03/06-Comments.asm) | 23 | `;` and the `COMMENT` directive |
| [07-AddSub.asm](lecture-03/07-AddSub.asm) | 24–29 | The first program: AddSub |
| [08-Template.asm](lecture-03/08-Template.asm) | 30, 56 | The program template |
| [09-AddSub2.asm](lecture-03/09-AddSub2.asm) | 55, 57 | AddSub with variables; the sum stored in `finalVal` |
| [10-AddSub2r.asm](lecture-03/10-AddSub2r.asm) | 69 | 16-bit version (Irvine16, `mov ax,@data`) |
| [11-ByteData.asm](lecture-03/11-ByteData.asm) | 35–39 | `BYTE`, `SBYTE`, byte arrays across lines |
| [12-Strings.asm](lecture-03/12-Strings.asm) | 40–44 | Null-terminated strings, the multi-line menu, `0Dh,0Ah` |
| [13-DupOperator.asm](lecture-03/13-DupOperator.asm) | 46 | `DUP` |
| [14-WordDwordQwordReal.asm](lecture-03/14-WordDwordQwordReal.asm) | 50–52 | `WORD`, `DWORD`, `QWORD`, `TBYTE`, `REAL4` |
| [15-LittleEndian.asm](lecture-03/15-LittleEndian.asm) | 53–54 | `12345678h` stored as `78 56 34 12` |
| [16-UninitializedData.asm](lecture-03/16-UninitializedData.asm) | 58 | `.data?` |
| [17-EqualSign.asm](lecture-03/17-EqualSign.asm) | 60–61 | `=` constants versus variables |
| [18-ArraySize.asm](lecture-03/18-ArraySize.asm) | 62–65 | Array and string sizes with `$` |
| [19-Equ.asm](lecture-03/19-Equ.asm) | 66–67 | `EQU` with integers and `<text>` |
| [20-Textequ.asm](lecture-03/20-Textequ.asm) | 68 | `TEXTEQU`, `%` and redefinition |
| [21-CToMasm.asm](lecture-03/21-CToMasm.asm) | 70 | `X = (a + b) * 3` |

Lecture exercises and assignments (for example, Assignment 2: `X = (a + b) / 2` and `a = a * b / c`) are left for practice and have no solution files here.

## Building

The examples use 32-bit MASM syntax and `Irvine32.inc`. Build them in a Windows x86 MASM project with the Irvine32 include and library paths configured. The Irvine32 dependencies are not bundled here.

`10-AddSub2r.asm` is a 16-bit real-mode program. It needs `Irvine16.inc`, the 16-bit linker (`make16.bat`), and MS-DOS or DOSBox to run.

Built `.exe` and `.obj` files are ignored by Git. Track the `.asm` sources when sharing the examples.
