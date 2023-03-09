.data
	question: .asciz "Enter an integer number: "

.text
	addi a7, zero, 4
	la a0, question
	ecall
	addi a7, zero, 5
	ecall
	li a7, 1
	ecall
