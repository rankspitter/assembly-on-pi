   .global _start

_start:

        MOV    R7, #3
        MOV    R0, #0
        MOV    R2, #5
        LDR    R1, =info
        SWI    0

        LDR     R2, =out
        MOV     R8, #0

loop:
        LDRB    R5,[R1, R8]
        ADD     R5, R5, #5
        STRB    R5, [R2, R8]

        ADD     R8, R8, #1
        LDRB     R6, =10
        STRB    R6, [R2, R8]
        ADD     R2, R2, #1

        CMP     R8, #5
        BEQ     write
        b       loop


write:
        MOV    R7, #4
        MOV    R0, #1
        MOV    R2, #10
        LDR    R1, =out
        SWI     0



_exit:
        MOV    R7, #1
        SWI    0



        .data

info:   .space 5
out:    .space 10
