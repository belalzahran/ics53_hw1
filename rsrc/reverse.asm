.text 
lui $at, 0x1001
ori $t1, $at, 0x0
lb $t0, 0x0($t1)
beq $t0, $zero, 0x4
addi $sp, $sp, 0xfffc
sw $t0, 0x0($sp)
addi $t1, $t1, 0x1
j 0x100002
.data
Hello_str: .asciiz "Hello World"   
.text    
lui $at, 0x1001
ori $t1, $at, 0x0
lb $t0, 0x0($t1)
beq $t0, $zero, 0x5
lw $t0, 0x0($sp)
addi $sp, $sp, 0x4
sb $t0, 0x0($t1)
addi $t1, $t1, 0x1
j 0x10000a
.data
Goodbye_char: .ascii 'g'
Goodbye_str: .asciiz 'goodbye'
.text
lui $at, 0x1001
ori $a0, $at, 0x0
addiu $v0, $zero, 0x4
syscall
lui $at, 0x1001
ori $a0, $at, 0xc
addiu $v0, $zero, 0x4
syscall
addiu $v0, $zero, 0xa
syscall
