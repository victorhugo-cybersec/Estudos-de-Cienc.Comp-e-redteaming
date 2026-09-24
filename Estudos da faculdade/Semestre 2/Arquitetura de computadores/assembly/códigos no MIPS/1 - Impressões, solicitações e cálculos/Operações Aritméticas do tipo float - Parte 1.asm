#Programa 7 - Operações aritméticas do tipo float - Parte 1

.data

num1: .float 4.5
num2: .float 2.3

.text

# Transferir valores de variáveis para registradores

l.s $f0, num1 # Transfere p/ $f0 o valor da variável "num1"
l.s $f1, num2 # Transfere p/ $f1 o valor da variável "num2"

# Operações aritméticas

# soma
add.s $f2,$f0,$f1
#subtração
sub.s $f3,$f0,$f1
#multiplicação
mul.s $f4, $f0, $f1
#divisão
div.s $f5, $f0, $f1