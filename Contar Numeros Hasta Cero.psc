Algoritmo ContarNumerosHastaCero
		
	
		Definir numero Como Entero;
		Definir contador Como Entero;
		

		contador <- 0; 
		
		Escribir "Ingrese un número (ingrese 0 para terminar):";
		Leer numero;
		
		Mientras numero <> 0 Hacer
	
			contador <- contador + 1;
			
	
			Escribir "Ingrese otro número (ingrese 0 para terminar):";
			Leer numero;
		FinMientras
		
	
		Escribir "Ha finalizado la entrada de números.";
		Escribir "Se ingresaron un total de ", contador, " números diferentes de cero.";

FinAlgoritmo
	
