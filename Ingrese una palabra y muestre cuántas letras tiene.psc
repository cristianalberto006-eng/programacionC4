Algoritmo ProcesoIngreseunapalabraymuestrecuántasletrastiene
	
		Definir palabra_original, subcadena_resultante Como Caracter
		Definir longitud_palabra Como Entero
		
	
		Escribir "Ingrese una palabra de al menos 5 letras:"
		Leer palabra_original
	
		longitud_palabra <- Longitud(palabra_original)
	
		subcadena_resultante <- SubCadena(palabra_original, 1, 3)
	
		Escribir "La palabra ingresada tiene ", longitud_palabra, " letras."
		Escribir "Las primeras 3 letras (subcadena) son: ", subcadena_resultante

FinAlgoritmo
