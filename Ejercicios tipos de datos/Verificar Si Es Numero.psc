Algoritmo VerificarSiEsNumero
	
		Definir caracter_ingresado Como Caracter
		
	
		Escribir "Ingrese un solo carácter:"
		Leer caracter_ingresado
		
	
		Si (caracter_ingresado >= '0' y caracter_ingresado <= '9') Entonces
			Escribir "El carácter, caracter_ingresado, es un DÍGITO NUMÉRICO."
			
		SiNo
	
			Escribir "El carácter , caracter_ingresado, NO es un dígito numérico (es una letra o un símbolo)."
			
		FinSi
		
FinAlgoritmo
	