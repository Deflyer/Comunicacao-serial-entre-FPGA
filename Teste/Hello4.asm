	
	loadn r1, #0
DigLetra_Loop:
		
		jmp DigLetra_Sai	; Fica lendo ate' que digite uma tecla valida
		jmp DigLetra_Loop	; Fica lendo ate' que digite uma tecla valida

DigLetra_Sai:
	nop  ; serial read r0
	outchar r0, r1			; Salva a tecla na variavel global "Letra"

	inc r1
	jmp DigLetra_Loop	; Fica lendo ate' que digite uma tecla valida