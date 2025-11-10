Algoritmo CompararIgualdad
		// 1. Definir variables
		Definir num1, num2 Como Entero
		Definir son_iguales Como Logico // La variable Lógica almacenará el resultado
		
		// 2. Pedir la entrada al usuario
		Escribir "Ingrese el primer número:"
		Leer num1
		Escribir "Ingrese el segundo número:"
		Leer num2
		
		// 3. Determinar el valor Booleano
		// El operador de igualdad (=) evalúa si num1 y num2 tienen el mismo valor.
		son_iguales <- (num1 = num2)
		
		// 4. Mostrar el resultado Booleano
		Escribir "Los números ingresados son: ", num1, " y ", num2
		Escribir "Resultado: ", son_iguales, " (Verdadero si son iguales, Falso si son diferentes)."
		
FinAlgoritmo
	
