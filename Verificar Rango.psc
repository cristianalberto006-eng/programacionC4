Algoritmo VerificarRango
	
		Definir numero_ingresado Como Entero
		Definir en_rango Como Logico 
		
	
		Escribir "Ingrese un número entero:"
		Leer numero_ingresado
		
	
		en_rango <- (numero_ingresado >= 1 Y numero_ingresado <= 100)
		
	
		Escribir "El número ingresado es: ", numero_ingresado
		Escribir "Resultado: ", en_rango, " (Verdadero si está entre 1 y 100, Falso en caso contrario)."
		
FinAlgoritmo
