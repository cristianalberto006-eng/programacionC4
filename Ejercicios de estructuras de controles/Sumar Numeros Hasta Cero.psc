Algoritmo SumarNumerosHastaCero
		
	
		Definir numero, suma Como Real;
		
	
		suma <- 0; 
		
	
		Escribir "Ingrese un número para sumar (ingrese 0 para ver el resultado y terminar):";
		Leer numero;
	
		Mientras numero <> 0 Hacer
			

			suma <- suma + numero;
			
	
			Escribir "Suma actual: ", suma, ". Ingrese otro número:";
			Leer numero;
			
		FinMientras
		

		Escribir "----------------------------------------------";
		Escribir "Ha ingresado el número 0. Fin del programa.";
		Escribir "La SUMA TOTAL de los números ingresados es: ", suma;
		
FinAlgoritmo
	

