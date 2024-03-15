// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.


//PSEUDO num2 = num0*num1
// i = 0;
// num2=0;
// while(i < num0) //i.e. exit when i >= num0
// {
//     num2 += num1; //add num1 a total of num0 times

// } 


@R2
M=0 //set R2=0

@i
M=0 //set i=0


(LOOP)
    @i //This variable will be given address 16 (first 15 are for registers)
    D=M //D = i

    @R0
    D=D-M //D=i-R0

    @END
    D;JGE //jump if greater than -> if i-R0>=0, go to exit_loop

    @R1
    D=M //D=R1

    @R2
    M=D+M //R2 = R2+R1

    //increment i
    @i
    M=M+1

    @LOOP //jump to the beginning of the loop
    0;JMP

(END)
    @END
    0;JMP