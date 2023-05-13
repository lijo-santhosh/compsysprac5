// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Initializing R0 to 0
@R0
M=0

// Initializing R3 to R2 (used as a counter)
@R2
D=M
@R3
M=D

(LOOP)
// Checking if R3 equals 0
@R3
D=M
@END
D;JEQ

// R0 = R0 + R1
@R0
D=M
@R1
D=D+M
@R0
M=D

// R3 = R3 - 1
@R3
M=M-1

// Jumping back to the LOOP
@LOOP
0;JMP

(END)
