.data
	# Constants data
	firstQuestion: .asciz "Enter an integer number: "
	secondQuestion: .asciz "Enter other integer number: "
	result: .asciz "This is result of sum: "

.text
	addi a7, zero, 4 					# Register a7 must to show string
	la a0, firstQuestion 			# Load first question message
	ecall 											# Call register a7 to show first question message
	addi a7, zero, 5 					# Register a7 must to receive int 
	ecall											# Ask an int value
	
	add s0, zero, a0
	
	addi a7, zero, 4						# Register a7 must to show string
	la a0, secondQuestion			# Load second question message
	ecall											# Call register a7 to show second question message
	addi a7, zero, 5						# Register a7 must to receive int 
	ecall											# Ask an int value
	
	add t1, s0, a0	
	
	addi a7, zero, 4						# Register a7 must to show string
	la a0, result							# Load result message
	ecall											# Call register a7 to show result message
	
	add a0, zero, t1	
	li a7, 1										# Load a0 value (li a7, 1 = a0 in console) 
	ecall											# Show int value
	
