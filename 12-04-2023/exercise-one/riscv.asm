.text
	main:
		li t0, 0											# Load 0 in t0
		li t1, 10										# Load 10 in t1
		
			loopHead:									# Start of loop
				bge t0, t1, loopEnd			# t0 is greater than or equal t1 (10), if satisfies the condition it goes to loop end 
				
				add a0, zero, t0					# Add t0 value to a0
				li a7, 1									# a7 load a0 value
				ecall										# Show value in a0
				
				addi t0, t0, 1						# Sum 1 to t0
				j loopHead								# Jump to start of loop again
			loopEnd:	