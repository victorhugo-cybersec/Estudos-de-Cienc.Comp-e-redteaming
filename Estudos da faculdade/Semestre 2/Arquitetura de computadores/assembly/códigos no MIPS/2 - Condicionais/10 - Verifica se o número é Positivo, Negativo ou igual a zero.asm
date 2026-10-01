# Programa 10 - Verifica se o número é Positivo, Negativo ou igual a zero
.data

	SolicitaNum: .asciiz "Digite um número: "
 	Res_Positivo: .asciiz "O número é positivo"
 	Res_Negativo: .asciiz "O número é negativo"
 	Res_Zero: .asciiz "O número é igual a zero"
 
.text

    	# Solicita o número
    	li $v0, 4 # Imprime char ou string
    	la $a0, SolicitaNum # Carrega em $a0 o endereço da variável "SolicitaNum" para impressão
    	syscall # Executa
    	
    	# Lê o número
    	li $v0, 5 # Lê um número inteiro e armazena em $v0
    	syscall # Executa
    	move $t0, $v0 # Copia p/ $t0 o valor armazenado em $v0
    	
    	# Condicionais
    	bgt $t0, 0, positivo # Se $t0 > 0, execute a label “positivo”
    	blt $t0, 0, negativo # Se $t0 < 0, execute a label “negativo”
    	beq $t0, 0, zero # Se $t0 = 0, execute a label “zero”
    	
    	# Criação das labels (funções)
    	positivo: # Criação da label “positivo”
    		li $v0, 4 # Imprime char ou string
    		la $a0, Res_Positivo # Carrega em $a0 o endereço da variável “Res_Positivo" para impressão
    		syscall # Executa
    			li $v0, 10 # Finaliza o programa (obrigatório) ou o programa executará a próxima label
    			syscall # Executa
    	negativo: # Criação da label negativo
    		li $v0, 4 # Imprime char ou string
    		la $a0, Res_Negativo # Carrega em $a0 o endereço da variável “Res_Negativo" para impressão
    		syscall # Executa
    			li $v0, 10 # Finaliza o programa (obrigatório) ou o programa executará a próxima label
    			syscall # Executa
    	zero: # Criação da label zero
    		li $v0, 4 # Imprime char ou string
    		la $a0, Res_Zero # Carrega em $a0 o endereço da variável “Res_Zero" para impressão
    		syscall # Executa
    			li $v0, 10 # Finaliza o programa (opcional, pois não há mais nenhuma instrução)
    			syscall # Execut