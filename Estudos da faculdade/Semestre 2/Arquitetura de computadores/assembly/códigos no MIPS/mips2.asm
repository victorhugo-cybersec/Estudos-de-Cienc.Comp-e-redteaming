# Programa 1 - Impressão de uma string

.data # Área de declaração de variáveis

msg: .asciiz "Hello, World!" # o ascii tem z no final pois há um terminador que mostra por bits as strings que forem concatenadas, onde cada uma começou e terminou

.text # Área para a escrita do programa

# Impressão da string

li $v0, 4 # Impressão de char e strings
la $a0, msg
syscall

# Finaliza o programa
li $v0, 10
syscall