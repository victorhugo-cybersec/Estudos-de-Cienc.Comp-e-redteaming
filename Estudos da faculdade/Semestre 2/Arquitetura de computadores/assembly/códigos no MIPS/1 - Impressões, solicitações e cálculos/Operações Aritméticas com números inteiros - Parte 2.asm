#Programa 4 - Operações Aritméticas com números inteiros - Parte 2

.data
n1: .word 17
n2: .word 5

.text

#Transferir os valores das variáveis para os registradores

lw $t0, n1 #Transfere para o $t0 o valor da variável "n1"
lw $t1, n2 #Transfere para o $t0 o valor da variável "n2"

#Operações Aritméticas
add $t2, $t0, $t1
sub $t3, $t2, $t1
mul $t4, $t2, $t3
div $t5, $t4, $t3

mflo $t6
mfhi $t7