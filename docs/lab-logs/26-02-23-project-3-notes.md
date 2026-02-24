# Project 3

Given all the chips built in Projects 1 and 2 for our foundation and also there one gate called DFF/Data Flip-Flop.

## Goals

This project main goal is to build a family of sequential chips, from a 1-bit register to a 16K memory unit.

- [x] Bit

  1-Bit register can be built from a `DFF` and a multiplexor.
- [x] Register

  16-Bit register this is just a combination of multiple 1-bit registers.
- [x] RAM8

  The first ram device or memory of eight 16-bit registers we should build, given 2 inputs: `in` for the data input and `address` for which data we should interact with, then there's a load parameter and there's an out parameter. We should add the in value to all the registers simultaneously and for selecting the right register we could utilized the mux/demux chips.
- [ ] RAM64

  A stacked of 8 RAM8.
- [ ] RAM512

  A stacked of 8 RAM64.
- [ ] RAM4K

  A stacked of 8 RAM512.
- [ ] RAM16K

  A stacked of 4 RAM4k.
- [ ] PC

  Program Counter, it just a counter with 3 control bits: `load`, `inc`, `reset`.
