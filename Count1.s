		AREA |.text|,CODE,READONLY
		EXPORT countOnes
		;On entry: R0 = address of first element of char array
		
		;Registers Used
		;R1 = character loaded from array
		;R2 = total count of 1's
		
		;total returned in R0
		
countOnes
		LDR R1, [R0]
		CMP R1, 0
		BEQ endprogram
		CMP R1, #1
		ADDS R0, R0, #1
		BNE countOnes
		ADDS R2, #1
		

		
endprogram
		MOVS R2, R0		
		BX LR
		END