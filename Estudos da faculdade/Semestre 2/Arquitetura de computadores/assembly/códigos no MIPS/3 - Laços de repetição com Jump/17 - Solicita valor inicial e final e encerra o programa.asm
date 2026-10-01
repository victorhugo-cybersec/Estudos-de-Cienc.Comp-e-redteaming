# Programa 17 - Solicita valor inicial e final e encerra o programa

.data
	SolicitaN1: .asciiz "Insira o primeiro número: "
	SolicitaN2: .asciiz "Insira o segundo número: "
	msgSoma: .asciiz "A soma é: "
	Pergunta: .asciiz "\nDeseja continuar? (1-sim, outro-não): "
	msgFim: .asciiz "\nFim do programa"
	
.text
	enquanto:
	
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
		
		#Soma
		add $t2, $t0, $t1
		
		#Imprime a mensagem da soma
		li $v0, 4
		la $a0, msgSoma
		syscall
		
		#Imprime o resultado da soma
		li $v0, 1
		move $a0, $t2
		syscall
		
		#Pergunta se irá continuar
		li $v0, 4
		la $a0, Pergunta
		syscall
		
		#Lê a resposta
		li $v0, 5
		syscall
		
		bne $v0, 1, sair
		
		j enquanto
		
		sair:
			li $v0, 4
			la $a0, msgFim
			syscall
			
			li $v0, 10
			syscall