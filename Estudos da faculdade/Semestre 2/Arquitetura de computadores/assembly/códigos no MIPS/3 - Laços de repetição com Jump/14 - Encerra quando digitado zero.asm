#Programa 14 - Encerra quando digitado zero

.data
	SolicitaNum: .asciiz "Digite um número diferente de zero: "
	msgFim: .asciiz "Zero digitado. Fim do programa."
	
.text
	loop:
	#Solicita o número
	li $v0, 4
	la $a0, SolicitaNum
	syscall
	
	#Lê o número digitado
	li $v0, 5
	syscall
	
	#Condição
	beq $v0, $zero, fim
	
		# Não atendida
		j loop
		
		# Atendida
		fim:
			li $v0, 4
			la $a0, msgFim
			syscall
			
			li $v0, 10
			syscall