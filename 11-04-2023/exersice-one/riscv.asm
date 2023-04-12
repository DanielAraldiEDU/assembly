.data
	firstQuestion: .asciz "Enter an integer number: "
	secondQuestion: .asciz "Enter other integer number: "
	result: .asciz "This is result of sum: "

.text
	addi a7, zero, 4
	la a0, firstQuestion
	ecall
	addi a7, zero, 5
	ecall
	
	add s0, zero, a0
	
	addi a7, zero, 4
	la a0, secondQuestion
	ecall
	addi a7, zero, 5
	ecall
	
	# This code has error in yours logic
	add t1, s0, a0	
	add a7, zero, t1
	li a7, 1
	ecall
	