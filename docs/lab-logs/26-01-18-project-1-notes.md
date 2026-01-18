# Project 1 Overview

The course has provided a single God-level logic gate: **Nand**, and from that Nand we've been ordered to build a functional computer. How? One step at a time.

## Goals

Project 1's main goal is to build 15 logic gates from scratch, these 15 logic gates are the commonly used gates and also comprise all the elementary logic gates needed to build our computer. These are the lists of logic gates we should build:

### Elementary Logic Gates

- Not
- And
- Or
- Xor
- Mux
- DMux

#### Multiplexor aka Mux

A multiplexor/Mux is a selector logic gates, given 3 inputs `a`, `b`, and `sel` or `select`. If the value of `sel` input is **0**, then the selected value is `a`, if not then `b`.

This is just a Ternary Operator, if you a coder you'll absolutely nail the concept of this Mux logic gate easily.

#### Demultiplexor aka DMux

This is the "inverse" from the [Multiplexor](#multiplexor-aka-mux), given 2 inputs `in` and `sel`, and 2 outputs `a` and `b`. Actually the logic behind it's quite similar, if `sel` value is **0**, then the `a` receives the `in` value and `b` got 0 as its value, vice versa.

### 16-Bit Variants

- Not16
- And16
- Or16
- Mux16

### Multi-Way Variants

- Or8Way
- Mux4Way16
- Mux8Way16
- DMux4Way
- DMux8Way

