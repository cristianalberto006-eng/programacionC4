Algoritmo VerificarParidad
	
		Definir numero_ingresado Como Entero
		Definir es_par Como Logico // La variable Lógica almacenará el resultado
		
	
		Escribir "Ingrese un número entero:"
		Leer numero_ingresado
		
	
		es_par <- (numero_ingresado MOD 2 = 0)
		
	
		Escribir "El número ingresado es: ", numero_ingresado
		Escribir "Resultado: ", es_par, " (Verdadero si es par, Falso si es impar)."
	
FinAlgoritmo
