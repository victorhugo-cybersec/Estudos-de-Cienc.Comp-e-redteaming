# Programa 0 - Impressão de um caractere

.data # Área de declaração de variáveis

letra: .byte 'K'

.text # área para a escrita do programa

li $v0, 4 # Impressão de char ou string
la $a0, letra #load address, carrega o endereço da variável na memória RAM e associa o endereço ao registrador $a0 do processador
syscall # Executar

# Finalizar programa, opcional
li $v0, 10
syscall