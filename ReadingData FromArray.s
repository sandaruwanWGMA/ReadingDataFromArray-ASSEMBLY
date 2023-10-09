.data
    array: .word 12, 3, 4, 5, 8
    x: .word 5
    newline: .string "\n"
    

.bss
.text

.globl main
main:
# Branching

li a1, 0

li a2, 20

la a3, array
add a4, a3, a1

lw a0, 0(a4)

# Print the value at register a0 to console

li a7, 1

ecall

# Print newline

la a0, newline

li a7, 4

ecall

#Branch to begining of the loop

addi a1, a1, 4 # Increment the loop variable by the size of word

blt a1, a2, -36 # Go 9 instructions backwards to continue printing if not completed
# End the program

li a0, 0

li a7, 93

ecall