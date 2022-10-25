c1: DC "Find all divisors."
c2: DC "Enter i:\0"
c3: DC "Divisors:"

; x1 stores the memmory address

ecall x0, x1, 4
addi x1, x0, 0x18			; 0x18 Memory Address of c2
ecall x1, x1, 4
ecall x5, x0, 5			; Store memory address of the gotten int in x5 
addi x1, x0, 0x28			; 0x28 Memory Address of c3
ecall x0, x1, 4
add x8, x0, x5

loop:
beq x8, x0, end
rem x10, x5, x8
bne x10, x0, else
ecall x0, x8, 0
else:
addi x8, x8, -1
jal x0, loop
end: