.text

	jal main
	
myFunction:

	addi sp, sp, -12 # the array must to inicialized with negative values
	sw t0, 8(sp)
	sw t1, 4(sp)
	sw t2, 0(sp)
	
	add t0, a0, a1
	add t1, a2, a3
	sub t2, t0, t1
	
	add a0, zero, t2
	
	lw t0, 8(sp)
	lw t1, 4(sp)
	lw t2, 0(sp)
	addi sp, sp, 12 # to get values of array must to used positive values
	
	jalr ra, 0 # literal command to return value

main:
	
	addi a0, zero, 0
	addi a1, zero, 1
	addi a2, zero, 2
	addi a3, zero, 3
	
	# ra (return address) to get myFunction return
	jal ra, myFunction # call myFunction
