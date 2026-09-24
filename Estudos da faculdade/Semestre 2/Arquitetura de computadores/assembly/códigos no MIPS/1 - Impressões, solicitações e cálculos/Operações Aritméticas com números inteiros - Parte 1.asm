#Programa 4 - Operações Aritméticas com números inteiros - Parte 1

# Atribuir números diretamente nos registradores
li $t0, 5
li $t1, 10

# Operações aritméticas
#Adição
add $t2, $t0, $t1

#Subtração
sub $t3, $t1, $t0

#Multiplicação
mul $t4, $t0, $t1

#Divisão
div $t5, $t1, $t0

#Move from HI, ou seja, pega o valor do HI e leva a um registrador. O HI representa o resto de uma divisão, e o LO, o quociente.
mfhi $t6
mflo $t7