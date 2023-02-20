	.global _start
_start:
_read:
	MOV R7, #3
	MOV R0, #0
	MOV R2, #1
	LDR R1, =input
	SWI 0



_compare:
        LDRB R2, [R1] @โหลดค่าจาก input มาเก็บไว้ที่ R2
        CMP R2, #'1'    @เปรียบเทียบค่าที่อยู่ใน R2 กับ '1'
        BEQ _outone     @ถ้าเท่ากับ 1 ให้ไปที่ _outone
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
        MOV R2,#4       @จำนวน byte ที่จะเขียน
        LDR R1, =one    @ที่อยู่ของข้อความ
        SWI 0           @เรียกใช้งาน system call
        B _exit         @กลับไปที่ _exit

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

_exit:
	MOV R7, #1      @เรียกใช้งาน system call ที่ 1
	SWI 0


	.data   @ส่วนของข้อมูล
input: .space 1  @สร้างพื้นที่เก็บข้อมูล 1 byte
one:	.ascii	"one\n" @สร้างพื้นที่เก็บข้อความ "one\n"
two:    .ascii  "two\n"
tree:    .ascii  "tree\n"
four:    .ascii  "four\n"
five:    .ascii  "five\n"
six:    .ascii  "six\n"
seven:    .ascii  "seven\n"
eight:    .ascii  "eight\n"
nine:    .ascii  "nine\n"
