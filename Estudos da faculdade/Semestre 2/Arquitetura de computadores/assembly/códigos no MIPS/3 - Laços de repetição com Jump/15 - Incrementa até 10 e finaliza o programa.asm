# Programa 15 - Incrementa até 10 e finaliza o programa

.data
	espaco: .asciiz " "
	msgFim: .asciiz "\nFim do programa."
	
.text
	li $t0, 0
	
	enquanto:
		
		#Condição
		beq $t0, 10, fim
		
			#Não atendida
			addi $t0, $t0, 1
			
			li $v0, 1
			move $a0, $t0
			syscall
			
			li $v0, 4
			la $a0, espaco
			syscall
			
			j enquanto
			
			#Atendida
			
			fim:
			
				li $v0, 4
				la $a0, msgFim
				syscall
				
				li $v0, 10
				syscall