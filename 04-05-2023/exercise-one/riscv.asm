.data
	x: .word 5
	y: .word 2
	z: .word 0

.text

main:
	la t3, x
	lw t4, 0(t3)
	
	la t3, y
	lw t5, 0(t3)
	
	la t6, z
	
	# z = x + y
	add t6, t4, t5
	sw t6, 0(t3)
