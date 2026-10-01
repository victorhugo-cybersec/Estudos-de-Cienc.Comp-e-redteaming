# Programa 12 - Aprovado ou Reprovado do tipo float
.data
# Área de declaração de variáveis
 SolicitaN1: .asciiz "Digite a primeira nota: "
SolicitaN2: .asciiz "Digite a segunda nota: "
SolicitaN3: .asciiz "Digite a terceira nota: "
msg_Aprovado: .asciiz "\nO aluno está Aprovado"
msg_Reprovado: .asciiz "\nO aluno está Reprovado"
Qtd_Provas: .float 3 # Declara a variável "Qtd_Provas" do tipo float e valor 3
Media: .float 5 # Declara a variável "Media" do tipo float e valor 5

.text
 # Área para escrita do programa
 # Solicita a primeira nota
 li $v0, 4 # Imprime char e string
 la $a0, SolicitaN1 # Carrega em $a0 o endereço da variável "SolicitaN1" para impressão
 syscall # Executa
# Lê a primeira nota
li $v0, 6 # Lê um número do tipo float e armazena em $f0
syscall # Executa
mov.s $f1, $f0 # Copia p/ $f1 o valor de $f0
#Solicita a segunda nota
li $v0, 4 # Imprime char e string
la $a0, SolicitaN2 # Carrega em $a0 o endereço da variável " SolicitaN2" para impressão
syscall # Executa
# Lê a segunda nota
li $v0, 6 # Lê um número do tipo float e armazena em $f0
syscall # Executa
mov.s $f2, $f0 # Copia p/ $f2 o valor de $f0
 # Solicita a terceira nota
li $v0, 4 # Imprime char e string
la $a0, SolicitaN3 # Carrega em $a0 o endereço da variável "SolicitaN3" para impressão
syscall # Executa

# Lê a terceira nota
li $v0, 6 # Lê um número do tipo float e armazena em $f0
syscall # Executa
mov.s $f3, $f0 # Copia p/ $f3 o valor de $f0
 #Operações aritméticas
add.s $f4, $f1, $f2 # $f4 = $f1 + $f2
add.s $f5, $f3, $f4 # $f5 = $f3 + $f4
l.s $f6, Qtd_Provas # Copia o valor da variável "Qtd_Provas" p/ $f6
l.s $f7, Media # Copia o valor da variável "Qtd_Provas" p/ $f7
div.s $f8, $f5, $f6 # $f8 = $f5 / $f6
# Condicionais
c.lt.s $f8, $f7 # verifica se $f8 < $f7
# Verifica se a condição é verdadeira (true) ou falsa (false)
 bc1t reprovado # Caso a condição seja atendida executa a label "reprovado"
 bc1f aprovado # Caso a condição não seja atendida executa a label "aprovado"
 # Criação das labels

reprovado: # Cria a label "reprovado"
 	li $v0, 4 # Imprime char e string
 	la $a0, msg_Reprovado # Carrega em $a0 o endereço da variável "msg_Reprovado" para impressão
 	syscall # Executa
 	li $v0, 10 # Finaliza o programa (obrigatório) ou a próxima label será executada
	syscall # Executa

aprovado: # Cria a label "reprovado"
 	li $v0, 4 # Imprime char e string
 	la $a0, msg_Aprovado # Carrega em $a0 o endereço da variável " msg_Aprovado" para impressão
 	syscall # Executa
 	li $v0, 10 # Finaliza o programa (opcional, pois não há mais nenhuma instrução)
	syscall # Executa