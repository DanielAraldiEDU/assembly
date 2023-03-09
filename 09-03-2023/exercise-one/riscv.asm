.data
	helloWorld: .asciz "Hello World!"

.text
	addi a7, zero, 4
	la a0, helloWorld
	ecall
