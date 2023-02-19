 .global _start
_start:
_read:
        MOV R7, #3
        MOV R0, #0
        MOV R2, #1
        LDR R1, =input
        SWI 0


_compare:
        LDRB R2, [R1]
        CMP R2, #'1'
        BEQ _outone
        CMP R2, #'2'
        BEQ _outtwo
        CMP R2, #'3'
        BEQ _outtree
        CMP R2, #'4'
        BEQ _outfour
        CMP R2, #'5'    
        BEQ _outfive
        CMP R2, #'6'
        BEQ _outsix
        CMP R2, #'7'
        BEQ _outseven
        CMP R2, #'8'
        BEQ _outeight
        CMP R2, #'9'
        BEQ _outnine
        B _exit


_outone:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =one
        SWI 0
        B _exit

_outtwo:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =two
        SWI 0
        B _exit

_outtree:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =tree
        SWI 0
        B _exit

_outfour:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =four
        SWI 0
        B _exit

_outfive:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =five
        SWI 0
        B _exit

_outsix:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =six
        SWI 0
        B _exit

_outseven:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =seven
        SWI 0
        B _exit

_outeight:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =eight
        SWI 0
        B _exit

_outnine:
        MOV R7, #4
        MOV R0, #1
        MOV R2,#4
        LDR R1, =nine
        SWI 0
        B _exit


 .data
input: .space 1
one:    .ascii  "one\n"
two:    .ascii  "two\n"
tree:    .ascii  "tree\n"
four:    .ascii  "four\n"
five:    .ascii  "five\n"
six:    .ascii  "six\n"
seven:    .ascii  "seven\n"
eight:    .ascii  "eight\n"
nine:    .ascii  "nine\n"
