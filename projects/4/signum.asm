//if R0> 0
    // R1=1
// else
    // R1 = 0

@R0
D=M //D=RAM[0]

@8
D; JGT //if R0>0 go to 8 (instruction number 8)

@R1
M=0
@10
0;JMP

@R1
M=1

@10
0;JMP