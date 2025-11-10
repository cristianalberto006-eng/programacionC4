Algoritmo ContarPositivosHastaNegativo
		
	
		Definir numero Como Entero;
		Definir contador_positivos Como Entero;
		
	
		contador_positivos <- 0;
		
	
		Escribir "Ingrese un número (ingrese un número negativo para detener):";
		Leer numero;
		
	
		Mientras numero > 0 Hacer
		
			contador_positivos <- contador_positivos + 1;
			
		
			Escribir "Ingrese otro número:";
			Leer numero;
		FinMientras
		
	
		Escribir "--- Resultado ---";
		Escribir "Se ingresaron un total de ", contador_positivos, " números POSITIVOS antes de detener la ejecución.";

FinAlgoritmo

