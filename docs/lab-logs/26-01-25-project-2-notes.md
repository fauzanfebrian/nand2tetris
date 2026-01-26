# Project 2

In this project, we can utilise all of the chips we built at [Project 1](./26-01-18-project-1-notes.md), we can pick and plug chips from the Project 1.

## Goals

Project 2 main goal is to build 5 chips, a family of combinational chips, from simple adders to an Arithmetic Logic Unit (ALU).

- [ ] HalfAdder

  Half Adder is a chip combining logic gates to get output `sum`, `carry` from the input `a` and `b`.
- [ ] FullAdder

  A combination from HalfAdder, the full implemntation of an adder which contain inputs: `a`, `b`, and `c`. Yes **C**, this is an input that allowing us use the third input so the `sum`, and `carry` bot can get 1 value.
- [ ] Add16

  16 combinations of 16 FullAdder.
- [ ] Inc16

  An incrementor, its mechanism is just simply add 1 to the incoming value.
- [ ] ALU

  An Arithmetic Logic Unit implemenation tips:

    1. Can be build using Add16 and various chips built in Project 1
    2. Can be built with less than 20 lines of HDL code.

## Notes

All the chips that built in this course is a Standard chips that already been used massively, unless the ALU, thats implementation is simplified because this course purpose is to teach students and simplify the learning process.