#Exercicio 1

.data 
	var: .word 0

.text
	
	li $t1, 2
	li $t2, 3
	
	add $t0, $t1, $t2
	sw $t0, var
	lw $t2, var
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall