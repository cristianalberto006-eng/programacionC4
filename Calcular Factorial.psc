Algoritmo CalcularFactorial
		
	
		Definir numero, contador Como Entero;
		Definir factorial Como Real; 
		Definir n_original Como Entero; 
		
		Escribir "Ingrese un número entero positivo para calcular su factorial:";
		Repetir
			Leer numero;
			Si numero < 0 Entonces
				Escribir "Error: El factorial solo se calcula para números positivos. Ingrese un número >= 0:";
			FinSi
		Hasta Que numero >= 0;
	
		n_original <- numero;
		
	
		Si numero = 0 Entonces
			factorial <- 1;
		Sino

			factorial <- 1; 
			contador <- numero; 
			
			
			Repetir
				factorial <- factorial * contador; 
				contador <- contador - 1;          
			Hasta Que contador = 0; 
		FinSi
		
	
		Escribir "-------------------------------------------------";
		Escribir "El factorial de ", n_original, " (", n_original, "!) es: ", factorial;
	
FinAlgoritmo
