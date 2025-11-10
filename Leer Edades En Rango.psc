 Algoritmo LeerEdadesEnRango
	
		Definir edad Como Entero;
		
	
		
		Escribir "Ingrese una edad (0 a 120). Para salir, ingrese un número fuera de este rango.";
		Leer edad;
		
	
		Mientras (edad >= 0) Y (edad <= 120) Hacer
			
	
			Escribir "Edad registrada: ", edad;
			Escribir "-------------------------------------------------------------";
	
			Escribir "Ingrese otra edad (0 a 120):";
			Leer edad;
			
		FinMientras
		
	
		Escribir "La edad ingresada (", edad, ") está FUERA DEL RANGO [0-120]. Fin de la lectura.";
		
FinAlgoritmo

