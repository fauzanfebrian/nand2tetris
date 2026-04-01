// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.


(LOOP)
    @SCREEN
    D=A
    @address
    M=D
    @KBD
    D=M
    @BLACK
    D;JGT
    @WHITE
    0;JMP
(BLACK)
    @address
    A=M
    M=-1
    @1
    D=A
    @address
    M=M+D
    @KBD
    D=A
    @address
    D=D-M
    @BLACK
    D;JGT
    @LOOP
    0;JMP
(WHITE)
    @address
    A=M
    M=0
    @1
    D=A
    @address
    M=M+D
    @KBD
    D=A
    @address
    D=D-M
    @WHITE
    D;JGT
    @LOOP
    0;JMP