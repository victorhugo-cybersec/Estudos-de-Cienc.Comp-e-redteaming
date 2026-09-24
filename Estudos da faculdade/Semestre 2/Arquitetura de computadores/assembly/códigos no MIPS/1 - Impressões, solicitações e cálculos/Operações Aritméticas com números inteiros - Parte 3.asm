#Programa 5 - Operações Aritméticas com números inteiros - Parte 3

#Solicita 2 números e imprime os resultados

.data
SolicitaN1: .asciiz "Digite o primeiro num.: "
SolicitaN2: .asciiz "Digite o segundo num.: "
msgAdd: .asciiz "O valor da adição é: "
msgSub: .asciiz "\nO valor da subtração é: "
msgMul: .asciiz "\nO valor da multiplicação é: "
msgDiv: .asciiz "\nO valor da divisão é: "
msgRes: .asciiz "\nO valor do resto é: "
msgQuo: .asciiz "\nO valor do quociente é: "

.text

#Solicita o primeiro número
li $v0, 4 #Imprime char e string
la $a0, SolicitaN1
syscall

#Leitura do primeiro número
li $v0, 5 #Lê inteiro
syscall
move $t0, $v0 #Copia pro $t0 o valor armazenado em $v0

#Solicita o segundo número
li $v0, 4
la $a0, SolicitaN2
syscall

li $v0, 5
syscall
move $t1, $v0

#Apresenta a soma dos números
add $t2, $t0, $t1

li $v0, 4
la $a0, msgAdd
syscall

li $v0, 1
move $a0, $t2
syscall