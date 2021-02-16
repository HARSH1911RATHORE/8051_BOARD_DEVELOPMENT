	;take values of x and y		                           2
				MOV A,#060H
				MOV B,#0AH

	;now do x*2   ;is x*2 overflowing:yes,no              6
MULTIPLICATION	CLR C		
				RLC A
				JC YESOVERFLOW
				SJMP NOOVERFLOW
				 
	
	;yes:store x*2 in destinationa and 0x02 in error address
YESOVERFLOW		MOV 20H,A
				MOV 30H,#02H
				SJMP ENDLOOP
	
	;no store x*2 to destination and check if y==0:y,n    7
NOOVERFLOW		MOV 20H,A
				XCH A,B
				JZ YESY_0
				XCH A,B
				SJMP NOY_0
	
	;y:0x01 to error address and then end operation
YESY_0			MOV 30H,#01H
				SJMP ENDLOOP
	
	;n:sub x and y and check for a carry                 60
NOY_0			SUBB A,B  
				SJMP CHECKCARRY
	
	;if carry:y,n                                        40
CHECKCARRY  	JC YESCARRY
				JNC NOCARRY
	
	;y:add x and y and store x into destination,quotient and error code into their required destination       8    
YESCARRY		ADD A,B
				MOV 22H,A
				MOV 21H,R1
				MOV 30H,#0H
				SJMP ENDLOOP
	
	;n: increment quotient and go back to the subtract loop         57
NOCARRY			INC R1
				SJMP NOY_0
	
	;end loop                                                                           2

ENDLOOP 		SJMP ENDLOOP                                