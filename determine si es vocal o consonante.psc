Algoritmo determinesiesvocaloconsonante
	
		Definir letra Como Caracter
		
	
		Escribir "Ingrese una sola letra del abecedario:"
		Leer letra
		
	
		letra <- Mayusculas(letra)
	
		Si (letra = 'A' o letra = 'E' o letra = 'I' o letra = 'O' o letra = 'U') Entonces
			Escribir "La letra es una VOCAL."
		SiNo
		
			Si (letra >= 'A' y letra <= 'Z') Entonces
				Escribir "La letra es una CONSONANTE."
			SiNo
				Escribir "Entrada no válida. Por favor, ingrese solo una letra."
			FinSi
		FinSi
FinAlgoritmo
	
