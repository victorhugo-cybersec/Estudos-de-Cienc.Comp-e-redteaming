.data
	SolicitaN1: .asciiz "Insira o ponto A (A > 0): "
	SolicitaN2: .asciiz "Insira o ponto B (B > 0): "
	SolicitaN3: .asciiz "Insira o ponto C (C > 0): "
	msgNaoValido: .asciiz "Esse número é inválido como um ponto. Tente novamente.\n"
	msgTria: .asciiz "\nOs pontos A, B e C formam um triângulo, o triângulo é: "
	msgNaoTria: .asciiz "\nOs pontos A, B e C não formam um triângulo."
	msgEqu: .asciiz "equilátero."
	msgIso: .asciiz "isósceles."
	msgEsc: .asciiz "escaleno."
	msgIne: .asciiz "inexistente"
	msgContinuar: .asciiz "\nInserir outro triângulo? (Sim, Não)"
	sim: .asciiz "Sim"
	nao: .asciiz "Não"
	msgEncerrando: .asciiz "\nEncerrando programa."
	msgErroEscrita: .asciiz "\nPor favor, digite novamente."
	resposta_usuario: .space 50
	
.text

	j validacao
	
	.macro verificaEquilatero
		
		bne  $t0, $t1, naoEquilatero
		bne $t1, $t2, naoEquilatero
		
		j equilatero
		
		equilatero:
		
			li $v0, 4
			la $a0, msgEqu
			syscall
			
			j continuar
		
		naoEquilatero:
			nop
		
	.end_macro
	
	.macro verificaIsosceles
		
		beq  $t0, $t1, isosceles
		beq $t1, $t2, isosceles
		beq $t0, $t2, isosceles
		
		j naoIsosceles
		
		isosceles:
		
			li $v0, 4
			la $a0, msgIso
			syscall
			
			j continuar
		
		naoIsosceles:
			nop
		
	.end_macro
	
	.macro verificaEscaleno
		
		bne  $t0, $t1, escaleno
		bne $t1, $t2, escaleno
		bne $t0, $t2, escaleno
		
		j naoEscaleno
		
		escaleno:
		
			li $v0, 4
			la $a0, msgEsc
			syscall
			
			j continuar
		
		naoEscaleno:
			
			li $v0, 4
			la $a0, msgIne
			syscall
		
			j continuar
		
	.end_macro
	
	validacao:
		li $v0, 4
		la $a0, SolicitaN1
		syscall
		
		li $v0, 5
		syscall
		
		move $t0, $v0
		
		ble $v0, $zero, repetir
		
		li $v0, 4
		la $a0, SolicitaN2
		syscall
		
		li $v0, 5
		syscall
		
		move $t1, $v0
		
		ble $v0, $zero, repetir
		
		li $v0, 4
		la $a0, SolicitaN3
		syscall
		
		li $v0, 5
		syscall
		
		move $t2, $v0
		
		ble $v0, $zero, repetir
		
		j étriangulo
		
		repetir:
		
			li $v0, 4
			la $a0, msgNaoValido
			syscall
			
			j validacao
			
		
		étriangulo:
			
			add $t3, $t0, $t1
			
			blt $t3, $t2, naotriangulo
			
			add $t3, $t0, $t2
			
			blt $t3, $t1, naotriangulo
			
			add $t3, $t1, $t2
			
			blt $t3, $t0, naotriangulo
			
			j triangulo
			
			naotriangulo:
			
				li $v0, 4
				la $a0, msgNaoTria
				syscall
				
				j continuar
				
			triangulo:
			
				li $v0, 4
				la $a0, msgTria
				syscall
				
				verificaEquilatero
				verificaIsosceles
				verificaEscaleno
				
	continuar:
	
		li $v0, 4
		la $a0, msgContinuar
		syscall
		
		li $v0, 8
		la $a0, resposta_usuario
		li $a1, 50
		syscall
		
		la $t0, resposta_usuario
		
		j tirarquebralinha
		
		tirarquebralinha:
			
			lb $t1, 0($t0)
			beq $t1, $zero, ponteirosim
			li $t2, 10
			beq $t1, $t2, removequebralinha
			addi $t0, $t0, 1
			j tirarquebralinha
		
		removequebralinha:
		
			sb $zero, 0($t0)
			addi $t0, $t0, 1
			j tirarquebralinha
		
		ponteirosim:
		
			la $t0, sim
			la $t1, resposta_usuario
			j compararsim
			
		compararsim:
		
			lb $t2, 0($t0)
			lb $t3, 0($t1)
			
			bne $t2, $t3, ponteironao
			beq $t2, $zero, validacao
			
			addi $t0, $t0, 1
			addi $t1, $t1, 1
			
			j compararsim
		
		ponteironao:
			
			la $t0, nao
			la $t1, resposta_usuario
			j compararnao
				
		compararnao:
		
			lb $t2, 0($t0)
			lb $t3, 0($t1)
			
			bne $t2, $t3, repetircontinuar
			beq $t2, $zero, pararprograma
			
			addi $t0, $t0, 1
			addi $t1, $t1, 1
			
			j compararnao
		
		repetircontinuar:
		
			li $v0, 4
			la $a0, msgErroEscrita
			syscall
		
			j continuar
		
		pararprograma:
		
			li $v0, 4
			la $a0, msgEncerrando
			syscall
			
			li $v0, 10
			syscall