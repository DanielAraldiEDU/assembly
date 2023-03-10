# Compiler the A[12] = h + A[8]

.data
	# Define the array A. put the values from arrayA[0]=0 at arrayA[15]=150 in memory
	arrayA: .word 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150
.text
	main:
		# Inicialize s3 in 1
		addi s2, zero, 1
		
		la s3, arrayA
		# t0 = arrayA[8]
		lw t0, 32(s3) 
		# t0 = t0 + h
		add t0, s2, t0
		# arrayA[12] = t0
		sw t0, 48(s3)
