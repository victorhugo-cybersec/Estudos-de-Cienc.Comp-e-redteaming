# Programa 11 - Verifica se é par ou ímpar
    .data
    # Área para declaração de variáveis
    SolicitaNum: .asciiz "Digite um número: "
    Res_Par: .asciiz "O número é par"
    Res_Impar: .asciiz "O número é ímpar"
.text
    # Solicita o número
    li $v0, 4 # Imprime char ou string
    la $a0, SolicitaNum # Carrega em $a0 o endereço da variável “SolicitaNum " para impressão
    syscall # Executa
    # Lê o número
    li $v0, 5 # Lê um número inteiro e armazena em $v0
    syscall # Executa
    move $t0, $v0 # Copia p/ $t0 o valor de $v0
    li $t1, 2 # Atribui a $t1 o valor 2
    div $t0, $t1 # $t0 / $t1
    mfhi $t2 # Copia o valor de hi (resto) para $t2
    # Condicional
    beq $t2, $zero, Par # Se $t2 = $zero, execute a label Par
    # Execução caso a condição não seja atendida
        li $v0, 4 # Imprime char ou string
    la $a0, Res_Impar # Carrega em $a0 o endereço da variável “Res_Impar " para impressão
    syscall # Executa
    li $v0, 10 # Finaliza o programa (obrigatório) ou o programa executará a próxima label
    syscall # Executa
    # Execução caso a condição seja atendida
    Par: # Cria a label Par
    li $v0, 4 # Imprime char ou string
    la $a0, Res_Par # Carrega em $a0 o endereço da variável “Res_Impar" para impressão
    syscall # Executa
        li $v0, 10 # Finaliza o programa (opcional, pois não há mais nenhuma instrução)
        syscall # Execu