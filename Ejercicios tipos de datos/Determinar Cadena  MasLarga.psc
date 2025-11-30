Proceso DeterminarCadenaMasLarga
  
    Definir cadena1, cadena2 Como Caracter
    Definir long1, long2 Como Entero
    
    Escribir "Ingrese la primera cadena de texto (Cadena 1):"
    Leer cadena1
    
    Escribir "Ingrese la segunda cadena de texto (Cadena 2):"
    Leer cadena2
    
   
    long1 <- Longitud(cadena1)
    long2 <- Longitud(cadena2)
    
    
    Escribir "--- Resultados ---"
    Escribir "Cadena 1 tiene ", long1, " caracteres."
    Escribir "Cadena 2 tiene ", long2, " caracteres."
    
    Si long1 > long2 Entonces
        
        Escribir "La Cadena 1 es la más larga."
    SiNo Si long2 > long1 Entonces
			
			Escribir "La Cadena 2 es la más larga."
		SiNo
			
			Escribir "Ambas cadenas tienen la misma longitud."
		FinSi
	FinSi
	

FinAlgoritmo
