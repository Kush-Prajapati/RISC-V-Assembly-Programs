c1: DC "What is your name?"
c2: DC "Hello "
c3: DC "!"

ld x28, c1(x0)
ld x29, c2(x0)
ld x30, c3(x0)

; x1 stores the memory address

ecall x0, x0, 4
ecall x5, x0, 9			; Store memory address of the gotten name string in x5 
addi x1, x0, 0x18			; 0x18 Memory Address of c2
ecall x1, x1, 4
addi x1, x0, 0x20			; 0x20 Memory Address of c3
ecall x1, x5, 4
ecall x0, x1, 4


