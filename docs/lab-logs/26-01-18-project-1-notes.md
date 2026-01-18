# Project 1

The course has provided a single God-level logic gate: **Nand**, and from that Nand we've been ordered to build a functional computer. How? One step at a time.

## Goals

Project 1's main goal is to build 15 logic gates from scratch, these 15 logic gates are the commonly used gates and also comprise all the elementary logic gates needed to build our computer. These are the lists of logic gates we should build:

### Elementary Logic Gates

- [x] Not
- [x] And
- [x] Or
- [x] Xor
- [x] Mux
- [x] DMux

#### Multiplexor aka Mux

A multiplexor/Mux is a selector logic gate, given 3 inputs `a`, `b`, and `sel` or `select`. If the value of `sel` input is **0**, then the selected value is `a`, if not then `b`.

This is just a Ternary Operator, if you are a coder you'll absolutely nail the concept of this Mux logic gate easily.

#### Demultiplexor aka DMux

This is the "inverse" from the [Multiplexor](#multiplexor-aka-mux), given 2 inputs `in` and `sel`, and 2 outputs `a` and `b`. Actually the logic behind it's quite similar, if `sel` value is **0**, then the `a` receives the `in` value and `b` got 0 as its value, vice versa.

### 16-Bit Variants

- [x] Not16
- [x] And16
- [x] Or16
- [x] Mux16

### Multi-Way Variants

- [x] Or8Way
- [x] Mux4Way16
- [x] Mux8Way16
- [x] DMux4Way
- [x] DMux8Way

## Status

On 18 January 2026 22:25, I've finished the first project, the Logic Gates Project. This first project made me bang my head, but it's not that hard tho.