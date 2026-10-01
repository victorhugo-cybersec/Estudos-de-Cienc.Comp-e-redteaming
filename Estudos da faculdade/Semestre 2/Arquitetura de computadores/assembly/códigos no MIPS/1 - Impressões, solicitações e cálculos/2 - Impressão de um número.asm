# Programa 2 - Impressão de um número

.data

num: .word 45

.text

li $v0, 1
lw $a0, num #load word, carrega o valor da variável num no registrador $a0
syscall

li $v0, 10
syscall