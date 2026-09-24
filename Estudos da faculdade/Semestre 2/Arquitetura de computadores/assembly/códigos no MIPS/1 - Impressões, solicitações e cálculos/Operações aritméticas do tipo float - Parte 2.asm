#Programa 8 - Operações aritméticas do tipo float - Parte 2

#Solicitar 2 números, realizar operações aritméticas e exibir os resultados

.data
SolicitaN1: .asciiz "Digite o primeiro número: "
SolicitaN2: .asciiz "Digite o segundo número: "
msgAdd: .asciiz "O valor da adição é: "
msgSub: .asciiz "\nO valor da subtração é: "
msgMul: .asciiz "\nO valor da multiplicação é: "
msgDiv: .asciiz "\nO valor da divisão é: "

.text

#Solicita o primeiro número
li $v0, 4 #Imprime caracteres e strings
la $a0, SolicitaN1
syscall

#Leitura do primeiro número
li $v0, 6 # Lê um número do tipo float e armazena em $f0
syscall # Executa

mov.s $f1, $f0 # Copia p/ o $f1 o valor armazenado em $f0

#Solicita o segundo número
li $v0, 4 #Imprime caracteres e strings
la $a0, SolicitaN2
syscall

#Leitura do segundo número
li $v0, 6 # Lê um número do tipo float e armazena em $f0
syscall # Executa

mov.s $f2, $f0 # Copia p/ o $f2 o valor armazenado em $f0

#Operações aritméticas
add.s $f3, $f1, $f2
sub.s $f4, $f1, $f2
mul.s $f5, $f1, $f2
div.s $f6, $f1, $f2

#Soma
li $v0, 4 #Imprime caracteres e strings
la $a0, msgAdd
syscall

li $v0, 2
mov.s $f12, $f3
syscall

#Subtração
li $v0, 4 #Imprime caracteres e strings
la $a0, msgSub
syscall

li $v0, 2
mov.s $f12, $f4
syscall

#Multiplicação
li $v0, 4 #Imprime caracteres e strings
la $a0, msgMul
syscall

li $v0, 2
mov.s $f12, $f5
syscall

#Divisão
li $v0, 4 #Imprime caracteres e strings
la $a0, msgDiv
syscall

li $v0, 2
mov.s $f12, $f6
syscall