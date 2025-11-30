Algoritmo Rendimientodelestudiante
		
		Definir Calificacion Como caracter
		
		Escribir "Ingrese la calificacion (A,B,C,D,F)"
		Leer Calificacion
		
		Calificacion <- Mayusculas(Calificacion)
		
		Segun Calificacion Hacer
			"A":Escribir "Excelente"
			"B":Escribir "Bueno"
			"C":Escribir "Regular"
			"D":Escribir "Minimo"
			"F":Escribir "Reprobado"
			
			De Otro Modo:
				Escribir "Error:Calificacion ingresada no es valida "
		FinSegun
		
FinAlgoritmo

