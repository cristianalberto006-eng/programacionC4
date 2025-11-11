Algoritmo SimuladorFirewall
		
		
		Definir MAX_IPs_BLOQUEADAS, MAX_PAQUETES, NUM_COLUMNAS Como Entero
		MAX_IPs_BLOQUEADAS <- 3 
		MAX_PAQUETES <- 10      
		NUM_COLUMNAS <- 4       
		
		
		Definir IP_ORIGEN, PUERTO, PROTOCOLO, ESTADO Como Entero
		IP_ORIGEN <- 1
		PUERTO <- 2
		PROTOCOLO <- 3
		ESTADO <- 4
		
		
		
		Definir IPs_Bloqueadas Como Caracter
		Dimension IPs_Bloqueadas[MAX_IPs_BLOQUEADAS]
		
		
		Definir Registros_Paquetes Como Caracter
		Dimension Registros_Paquetes[MAX_PAQUETES, NUM_COLUMNAS]
		
		Definir contador_paquetes Como Entero
		contador_paquetes <- 0
		
		
		IPs_Bloqueadas[1] <- "192.168.1.100"
		IPs_Bloqueadas[2] <- "10.0.0.5"
		IPs_Bloqueadas[3] <- "172.16.20.1"
		
		
		Para i <- 1 Hasta MAX_PAQUETES Hacer
			Para j <- 1 Hasta NUM_COLUMNAS Hacer
				Registros_Paquetes[i, j] <- ""
			FinPara
		FinPara
		
		
		contador_paquetes <- contador_paquetes + 1
		RegistrarPaquete(Registros_Paquetes, IPs_Bloqueadas, MAX_IPs_BLOQUEADAS, contador_paquetes, "192.168.1.1", "80", "TCP")
		
		
		contador_paquetes <- contador_paquetes + 1
		RegistrarPaquete(Registros_Paquetes, IPs_Bloqueadas, MAX_IPs_BLOQUEADAS, contador_paquetes, "192.168.1.100", "22", "SSH")
		
		
		contador_paquetes <- contador_paquetes + 1
		RegistrarPaquete(Registros_Paquetes, IPs_Bloqueadas, MAX_IPs_BLOQUEADAS, contador_paquetes, "10.0.0.5", "443", "HTTPS")
		
		
		contador_paquetes <- contador_paquetes + 1
		RegistrarPaquete(Registros_Paquetes, IPs_Bloqueadas, MAX_IPs_BLOQUEADAS, contador_paquetes, "200.200.0.1", "53", "UDP")
		
		
		
		Escribir "--- Registros de Tráfico del Firewall (", contador_paquetes, " paquetes) ---"
		MostrarRegistros(Registros_Paquetes, contador_paquetes)
		
		Escribir ""
		Escribir "--- Alertas de Seguridad ---"
		GenerarAlertas(Registros_Paquetes, contador_paquetes)
		
FinAlgoritmo


SubProceso RegistrarPaquete(Registros Por Referencia, IPs_Bloqueadas, total_ips_bloqueadas, indice, ip, puerto, protocolo)
    
    Definir bloqueado Como Logico
    bloqueado <- Falso
    
    
    Para i <- 1 Hasta total_ips_bloqueadas Con Paso 1 Hacer
        Si ip = IPs_Bloqueadas[i] Entonces
            bloqueado <- Verdadero 
            
        FinSi
    FinPara
	
  
    Registros[indice, 1] <- ip        
    Registros[indice, 2] <- puerto    
    Registros[indice, 3] <- protocolo 
    
    
    Si bloqueado Entonces
        Registros[indice, 4] <- "BLOQUEADO" 
    SiNo
        Registros[indice, 4] <- "PERMITIDO" 
    FinSi
    
FinSubProceso


SubProceso MostrarRegistros(Registros, total_paquetes)
    Escribir "ID | IP Origen       | Puerto | Protocolo | Estado"
    Escribir "---|-----------------|--------|-----------|-----------"
    
    Para i <- 1 Hasta total_paquetes Con Paso 1 Hacer
       
        Escribir i, "  | ", Registros[i, 1], " | ", Registros[i, 2], "    | ", Registros[i, 3], "      | ", Registros[i, 4]
    FinPara
FinSubProceso


SubProceso GenerarAlertas(Registros, total_paquetes)
    
    Para i <- 1 Hasta total_paquetes Con Paso 1 Hacer
        
        Si Registros[i, 4] = "BLOQUEADO" Entonces
            Escribir "!!! ALERTA ", i, ": Tráfico de IP ", Registros[i, 1], " (Puerto ", Registros[i, 2], ") ha sido DENEGADO."
        FinSi
    FinPara
FinSubProceso
	

