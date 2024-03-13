// Sum numbers from 1 to n in a loop

// Load n into R1
@n
D=M
@R1
M=D

// Initialize sum to 0
@0
D=A
@sum
M=D

(loop):
    // Compare counter to n
    @R2
    D=M
    @R1
    D=D-M // Compare R2 - R1 (R1 is n)
    @end
    D;JEQ // If R2 == R1, jump to end
    
    // Add counter to sum
    @R2
    D=M
    @sum
    M=M+D
    
    // Increment counter
    @R2
    M=M+1
    
    // Jump back to loop
    @loop
    0;JMP
    
(end):
    // End of the program
    @sum
    D=M
    // Use D for something, like storing the result in memory or outputting it.