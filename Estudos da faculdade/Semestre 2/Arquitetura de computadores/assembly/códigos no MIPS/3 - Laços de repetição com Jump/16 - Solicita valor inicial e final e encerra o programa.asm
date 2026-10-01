# Programa 16 - Solicita valor inicial e final e encerra o programa

.data
	SolicitaN1: .asciiz "Insira o primeiro número: "
	SolicitaN2: .asciiz "Insira o segundo número: "
	espaco: .asciiz " "
	msgFim: .asciiz "\nFim do programa"
	
.text

	#Solicita o primeiro núm.
	li $v0, 4
	la $a0, SolicitaN1
	syscall
	
	#Lê o número inicial
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	#Solicita o segundo núm.
	li $v0, 4
	la $a0, SolicitaN2
	syscall
	
	#Lê o número final
	li $v0, 5
	syscall
	
	move $t1, $v0

	loop:
		
		#Imprime um espaço entre os números
		li $v0, 4
		la $a0, espaco
		syscall
		
		#Imprime o número atual
		li $v0, 1
		move $a0, $t0
		syscall
		
		addi $t0, $t0, 1
		
		bgt $t0, $t1, sair
		
		j loop
		
		sair:
			li $v0, 4
			la $a0, msgFim
			syscall
			
			li $v0, 10
			syscall