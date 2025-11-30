Algoritmo Calculadora
		
	
		Definir num1, num2, resultado Como Real;
		Definir operador Como Caracter;
	
		Escribir "Ingrese el primer número:";
		Leer num1;
		Escribir "Ingrese el segundo número:";
		Leer num2;
		Escribir "Ingrese el tipo de operación (+, -, *, /):";
		Leer operador;
	
		Segun operador Hacer
			"+":
				resultado <- num1 + num2;
				Escribir "El resultado de la suma es: ", resultado;
			"-":
				resultado <- num1 - num2;
				Escribir "El resultado de la resta es: ", resultado;
			"*":
				resultado <- num1 * num2;
				Escribir "El resultado de la multiplicación es: ", resultado;
			"/":

				Si num2 <> 0 Entonces
					resultado <- num1 / num2;
					Escribir "El resultado de la división es: ", resultado;
				Sino
					Escribir "Error: No se puede dividir por cero.";
				FinSi
			De Otro Modo:
				Escribir "Error: Operador ingresado (", operador, ") no válido.";
		FinSegun
		
FinAlgoritmo
	
