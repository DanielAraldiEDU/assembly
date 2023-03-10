.data
	firstQuestion: .asciz "(s0) - Enter an integer number: "
	secondQuestion: .asciz "(s1) - Enter other integer number: "

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
	
	add s1, zero, s0
	add s0, zero, a0
	
