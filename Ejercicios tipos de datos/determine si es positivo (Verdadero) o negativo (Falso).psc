Algoritmo DeterminarSignoLogico
	
		Definir numero_ingresado Como Entero
	
		Definir es_positivo Como Logico
		
	
		Escribir "Ingrese un número entero (positivo o negativo):"
		Leer numero_ingresado
		
	
		es_positivo <- (numero_ingresado > 0)
		
	
		Escribir "El número ingresado es: ", numero_ingresado
		

		Si es_positivo Entonces
			Escribir "Resultado Lógico: VERDADERO (El número es positivo)."
		SiNo
			Escribir "Resultado Lógico: FALSO (El número es negativo o cero)."
		FinSi
		
FinAlgoritmo
