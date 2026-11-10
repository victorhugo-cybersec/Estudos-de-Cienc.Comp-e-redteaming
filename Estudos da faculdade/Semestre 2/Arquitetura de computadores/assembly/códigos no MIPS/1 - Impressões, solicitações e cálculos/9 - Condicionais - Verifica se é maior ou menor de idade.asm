# Programa 9 - Condicionais - Verifica se é maior ou menor de idade
.data
    SolicitaIdade: .asciiz "Digite sua idade: "
    Res_Maior: .asciiz "Maior de idade."
    Res_Menor: .asciiz "Menor de idade."
.text

    # Solicita o número
    li $v0, 4 # Imprime char ou string
    la $a0, SolicitaIdade # Carrega em $a0 o endereço da variável “SolicitaIdade" para impressão
    syscall # Executa
    
    # Lê o número
    li $v0, 5 # Lê um número inteiro e armazena em $v0
    syscall # Executa
    move $t0, $v0 # Copia p/ $t0 o valor de $v0
    
    # Condicionais
    bge $t0, 18, maior # Se $t0 >= 18, execute a label "maior"
    blt $t0, 18, menor # Se $t0 < 18, execute a label "menor"
    
    # Criação das labels
    
        maior: # Criação da label "maior"
        li $v0, 4 # Imprime char ou string
        la $a0, Res_Maior # Carrega em $a0 o endereço da variável “Res_Maior" para impressão
        syscall # Executa
            li $v0, 10 # Finaliza o programa (obrigatório) ou o programa executará a próxima label
            syscall # Executa
            
        menor: # Criação da label "menor"
        li $v0, 4 # Imprime char ou string
        la $a0, Res_Menor # Carrega em $a0 o endereço da variável “Res_Menor " para impressão
        syscall # Executa
            li $v0, 10 # Finaliza o programa (opcional, pois não há mais nenhuma instrução)
            syscall # Executa