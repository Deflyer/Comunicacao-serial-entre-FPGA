
	loadn r0, #60
	loadn r1, #1
	loadn r2, #100
	jmp loop
	
	delay:
		push r1
		push r2
		push r3
		push r4
		loadn r1, #0
		loadn r2, #0
		loadn r3, #0
		loadn r4, #10000
		delay_loop:
				inc r1
				cmp r1,r4
				jle delay_loop
				inc r2
				cmp r2,r4
				jle delay_loop
				inc r3
				cmp r3,r4
				jle delay_loop
		pop r4
		pop r3
		pop r2
		pop r1
		rts

	loop:
			;call delay
			inc r0
			nop ; serial TX r0
			outchar r0,r1
			inc r1
			cmp r1,r2
	jle loop
	halt
	
