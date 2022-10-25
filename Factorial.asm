c1: DC "n! Enter:"
c2: DC "!="

ld x28, c1(x0)
ld x29, c2(x0)

; x1 stores the memmory address

ecall x1, x0, 4
ecall x5, x0, 5			; Store memory address of the gotten int in x5 
addi x1, x0, 0x10			; 0x10 Memory Address of c1
addi x7, x0, 1

loop:
beq x6, x5, end
addi x6, x6, 1
mul x7, x6, x7
jal x0, loop

end:
ecall x1, x5, 0
ecall x1, x1, 4
ecall x1, x7, 0

