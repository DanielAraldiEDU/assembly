# Factorial in C and C++
#
# int fibonacci(int number) {
#		if (number <= 2) return 1;
# 	else return fibonacci(number - 1) * fibonacci(number - 2);
# }
#

jal main

fibonacci:

  # created stack
	addi sp, sp, -8
	sw a0, 4(sp)
	sw ra, 0(sp)
	
	addi t0, zero, 2
	bgt a0, t0, else # if (number <= 2)
	
	addi a2, a2, 1
	
	# get to values of stack
	lw a0, 4(sp)
	lw ra, 0(sp)
	addi sp, sp, 8
	
	jalr ra, 0 # return value
	
	else:
	
		addi a0, a0, -1
		jal ra, fibonacci # fibonacci(number - 1)
		
		addi a0, a0, -1 # fibonacci(number - 2)
		jal ra, fibonacci
		
		# get to values of stack
		lw a0, 4(sp)
		lw ra, 0(sp)
		addi sp, sp, 8
		
		jalr ra, 0

main:

	addi a0, zero, 7
	jal ra, fibonacci
	
