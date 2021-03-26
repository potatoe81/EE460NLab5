.ORIG x3000

LEA R0, START
LDW R0, R0, #0 ; r0 has xc000, will be used as base

LEA R1, TWENTY ;starts at 63
LDW R1, R1, #0 ; r1 has the counter which starts at 20

AND R2, R2, #0 ; r2 holds current sum ; starts at 126

LOOP LDB R3, R0, #0 ; r3 holds byte in memory
ADD R2, R2, R3 ; r2 has current sum starts at 189
ADD R0, R0, #1 ;next memory location
ADD R1, R1, #-1
BRp LOOP;comes back here from IE at 22836

LEA R0, LAST ;r0 has address of xC014 got here at 25264
LDW R0, R0, #0 ;r0 has xC014
STW R2, R0, #0 ; stores sum at xc014 gets here 25349


JMP R2

UNKNOWN .FILL xA110

HALT; program ends on 25501

FIRST .FILL x4000
START .FILL xC000
LAST .FILL xC014
PAGEFAULT .FILL xA002
UNAL .FILL xC017
TWENTY .FILL #20

.END
