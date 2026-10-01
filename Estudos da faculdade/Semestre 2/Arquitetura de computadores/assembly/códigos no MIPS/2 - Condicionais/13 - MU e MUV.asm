# Programa 13 - MU e MUV

.data
	espaco: .asciiz "Digite a distância percorrida em km: "
	tempo: .asciiz "Digite o tempo de deslocamento em horas: "
	aceleracao: .asciiz "Digite a aceleração em km/h^2: "
	msgVel: .asciiz "A veloicdade é: "
	msgMU: .asciiz "O movimento é uniforme (MU)"
	msgMUV: .asciiz "O movimento é uniformemente variado (MUV)"
	zero: .float 0.0
	
.text

	#Solicita a distância percorrida
	li $v0, 4
	la $a0, espaco
	syscall
	
	# Lê a distância percorrida
	li $v0, 6
	syscall
	
	mov.s $f1, $f0
	
	#Solicita o tempo de deslocamento
	li $v0, 4
	la $a0, tempo
	syscall
	
	# Lê o tempo de deslocamento
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	
	#Solicita a aceleração
	li $v0, 4
	la $a0, aceleracao
	syscall
	
	# Lê a aceleração
	li $v0, 6
	syscall
	
	mov.s $f3, $f0
	
	l.s $f4, zero
	
	c.eq.s $f3, $f4
	
		bc1t mu
	
		bc1f muv
		
		mu:
			li $v0, 4
			la $a0, msgMU
			syscall
			
			# cálculo da velocidade MU ( V = S/T)
			div.s $f5, $f1, $f2
			
			#Imprime msg velocidade
			li $v0, 4
			la $a0, msgVel
			syscall
			
			li $v0, 2
			mov.s $f12, $f5
			syscall
			
			li $v0, 10
			syscall
			
		muv:
			li $v0, 4
			la $a0, msgMUV
			syscall
			
			#calcula velocidade do muv (v = a . s)
			mul.s $f6, $f3, $f2
			
			#Imprime msg velocidade
			li $v0, 4
			la $a0, msgVel
			syscall
			
			li $v0, 2
			mov.s $f12, $f6
			syscall
			
			li $v0, 10
			syscall
			