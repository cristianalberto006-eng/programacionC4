Algoritmo VerificarMayusculaMinuscula
	
		Definir caracter_ingresado Como Caracter
		
	
		Escribir "Ingrese un solo carácter del abecedario:"
		Leer caracter_ingresado
		

		Si (caracter_ingresado >= 'A' y caracter_ingresado <= 'Z') Entonces
			Escribir "El carácter ingresado, es una letra MAYÚSCULA."
			
	
		SiNo Si (caracter_ingresado >= 'a' y caracter_ingresado <= 'z') Entonces
				Escribir "El carácter_ingresado,es una letra MINÚSCULA."
				
	
			SiNo
				Escribir "El carácter ingresado,NO es una letra (es un número, símbolo u otro carácter)."
			FinSi
		FinSi
		
	
FinAlgoritmo
