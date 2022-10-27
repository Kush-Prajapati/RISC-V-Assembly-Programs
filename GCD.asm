s1: DC "Input two positive integers"
c1: DC "Integer 1: "
c2: DC "Integer 2: "

ld x28, s1(x0)
ld x29, c1(x0)
ld x30, c2(x0)

ecall x0, x7, 4
addi x7, x0, 0x20
ecall x1, x7, 4
ecall a0, x0, 5
addi x7, x0, 0x30
ecall x1, x7, 4
ecall a1, x0, 5

jal x1, gcd

gcd:

bne a1, x0, recu
jalr x0, 0(x1)
recu:
sd sp, -8(sp)
sd a0, -16(sp)
sd a1, -24(sp)
addi sp, sp, -24
add a2, x0, a0
add a0, x0, a1
rem a1, a2, a1
jal x1, gcd

ecall x0, a0, 0

