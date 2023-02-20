    .global _start

_start:

        MOV    R7, #3
        MOV    R0, #0
        MOV    R2, #5
        LDR    R1, =info
        SWI    0

        LDR     R2, =out @r2 จะเก็บค่า out
        MOV     R8, #0 @r8 จะเก็บค่า 0

loop:
        LDRB    R5,[R1, R8] @r5 โหลดค่าจาก info มาเก็บไว้ที่ r5
        ADD     R5, R5, #5 @r5 บวก 5
        STRB    R5, [R2, R8] @r5 จะเก็บค่าที่บวกไปแล้วไว้ที่ out

        ADD     R8, R8, #1 @r8 บวก 1
        LDRB     R6, =10 @r6 จะเก็บค่า \n
        STRB    R6, [R2, R8]  @r6 จะเก็บค่า \n ไว้ที่ out  
        ADD     R2, R2, #1 @r2 บวก 1

        CMP     R8, #5 @r8 จะเก็บค่า 5
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
