Algoritmo SumaHastaCien
	

    Definir numero, suma Como Real;
	
    
    suma <- 0;
	
    Escribir "Iniciando la lectura de números. El ciclo terminará cuando la suma supere 100.";
    Escribir "--------------------------------------------------------------------------------";

    Mientras suma <= 100 Hacer
        
	
        Escribir "La suma actual es ", suma, ". Ingrese un número para sumar:";
        Leer numero;
        
    
        suma <- suma + numero;
        
    FinMientras
    

    Escribir "--------------------------------------------------------------------------------";
    Escribir "¡Condición Alcanzada!";
    Escribir "La suma total es: ", suma;
    Escribir "La suma ha superado el valor de 100, terminando el programa.";
	
FinAlgoritmo
