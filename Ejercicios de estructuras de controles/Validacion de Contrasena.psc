Algoritmo ValidacionContrasena
		
	
		Definir contrasena_ingresada Como Caracter;
		Definir contrasena_correcta Como Caracter;
		
	
		contrasena_correcta <- 'admin123';
		
	
		Repetir
			Escribir "Ingrese la contraseña:";
			Leer contrasena_ingresada;
			

			contrasena_ingresada_normalizada <- Minusculas(contrasena_ingresada);
			
			Si contrasena_ingresada_normalizada <> contrasena_correcta Entonces
				Escribir "Contraseña incorrecta. Intente de nuevo.";
				Escribir "---------------------------------------";
			FinSi
			
	
		Hasta Que contrasena_ingresada_normalizada = contrasena_correcta;
		
		Escribir "---------------------------------------";
		Escribir "¡ACCESO CONCEDIDO! Contraseña correcta.";
		
FinAlgoritmo
	

