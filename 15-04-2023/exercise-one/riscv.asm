.data

	readingElements: .asciz "READING ELEMENTS FROM ARRAY:\n"
	EnterWith: .asciz "ENTER WITH ARRAY["
	EndEnterWith: .asciz "] = "
	presentation: .asciz "\nPRESENTATION OF READ ARRAY:"
	arrayPosition: .asciz "\nARRAY["
	
	array: .word 0,0,0,0,0,0,0,0
	
.text

	add t0, zero, zero											# t0 = 0
	addi s8, zero, 8												# s8 = 0
	
	la s1, array 													# Base address from array A

	# print text
	addi a7, zero, 4
	la a0, readingElements
	ecall
	
	enterFor: 
		bge t0, s8, endEnterFor							# if t0 is greather than or equal the s8, jump to end for
			# print enter text
			addi a7, zero, 4
			la a0, EnterWith
			ecall
			
			# print index
			addi a7, zero, 1
			add a0, zero, t0
			ecall 
			
			# print end enter text
			addi a7, zero, 4
			la a0, EndEnterWith
			ecall
			
			#	read an integer value
			addi a7, zero, 5
			ecall
			add s0, zero, a0 									# a0 value is added to s0 (this line s0 = a0)
			
			#	put value in array
			slli t1, t0, 2  										# t1 = 4 * t0
			add s2, s1, t1 										#	s2 = base (s1) adding displacement (t1)
			sw s0, 0(s2)												# store value in array
			
			addi t0, t0, 1											# add +1 to t0
		
		
		jal zero, enterFor										# jump to start for (this is equal the command "j enterFor")
	endEnterFor:

	# print text
	addi a7, zero, 4
	la a0, presentation
	ecall

	add t0, zero, zero											# add zero to t0
	
	showFor: 
		bge t0, s8, endShowFor								# if t0 is greather than or equal the s8, jump to end for
			# print array position
			addi a7, zero, 4
			la a0, arrayPosition
			ecall
			
			# print index 
			addi a7, zero, 1
			add a0, zero, t0
			ecall 
			
			# print end array position 
			addi a7, zero, 4
			la a0, EndEnterWith
			ecall
			
			# read an integer value
			slli t1, t0, 2											# t1 = 4 * t0
			add s2, s1, t1											#	s2 = base (s1) adding displacement (t1)
			lw a0, 0(s2)												# load value in array
			
			# print array value 
			addi a7, zero, 1
			ecall 
			
			addi t0, t0, 1											# add zero to t0
		
		jal zero, showFor										# jump to start for (this is equal the command "j showFor")
	endShowFor:
