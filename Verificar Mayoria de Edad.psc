Algoritmo VerificarMayoriaEdad
	
		Definir edad Como Entero
		Definir es_mayor_edad Como Logico 
		
	
		Escribir "Ingrese la edad de la persona:"
		Leer edad
		
	
		es_mayor_edad <- (edad >= 18)
		
	
		Escribir "Edad ingresada: ", edad, " años."
		
		Si es_mayor_edad Entonces
			Escribir "La persona ES mayor de edad."
		SiNo
			Escribir "La persona NO es mayor de edad."
		FinSi
		
FinAlgoritmo
	
