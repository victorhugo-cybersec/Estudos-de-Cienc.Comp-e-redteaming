# Programa 4 - Solicita e imprime um número inteiro

.data
SolicitaNum: .asciiz "Digite um número inteiro OU MORRA: "
MsgNum: .asciiz "O número digitado é: "

.text

#Manda a mensagem de solicitação
li $v0, 4
la $a0, SolicitaNum
syscall

#Recebe o número inteiro
li $v0, 5
syscall

move $t0, $v0

#Imprime o número recebido
li $v0, 4
la $a0, MsgNum
syscall

li $v0, 1
move $a0, $t0
syscall