.ORIG x1200
ADD R6, R6, #-2; 382
STW R0, R6, #0 ; push r0 to stack
ADD R6, R6, #-2;
STW R1, R6, #0 ; push r1 to stack
ADD R6, R6, #-2;
STW R2, R6, #0 ; push r2 to the stack finishes at cycle 571

LEA R0, BASE
LDW R0, R0, #0 ;R0 has x1000
LEA R1, LENGTH
LDW R1, R1, #0 ;R1 has #128

LOOP LDW R2, R0, #0
AND R2, R2, #-2
STW R2, R0, #0
ADD R0, R0, #2
ADD R1, R1, #-1
BRp LOOP


LDW R2, R6, #0 ; pop r2 from stack
ADD R6, R6, #2 ;
LDW R1, R6, #0 ; pop r1 from stack
ADD R6, R6, #2 ;
LDW R0, R6, #0 ; pop r0 from stack
ADD R6, R6, #2 ; restore stack pointer finishes at 22773


RTI
BASE .FILL x1000
LENGTH .FILL #128

.END
