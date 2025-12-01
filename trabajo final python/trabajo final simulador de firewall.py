
def generar_alerta(ip, tipo_alerta):
    """Muestra un mensaje de alerta."""
    print("!!! ALERTA GENERADA !!!")
    print(f"Tipo: {tipo_alerta}")
    print(f"IP de origen: {ip}")
    print("---------------------------------------")

def mostrar_registros(registros):
    """Muestra el contenido actual de la lista de registros."""
    num_paquetes = len(registros)
    print(f"----------------- REGISTROS DE PAQUETES ({num_paquetes}) -----------------")
    if num_paquetes > 0:

        print("ID | IP ORIGEN        | PUERTO | PROTOCOLO")
        print("-------------------------------------------------------")
        
        for i, reg in enumerate(registros):
            print(f"{reg['id']:<2} | {reg['ip']:<15} | {reg['puerto']:<6} | {reg['protocolo']}")
    else:
        print("No hay paquetes registrados aún.")
    print("-------------------------------------------------------------------")

def registrar_paquete(registros, ips_bloqueadas, num_paquetes):
    """Solicita datos de paquete, aplica reglas y lo registra."""
    
  
    print("--- Registrar Nuevo Paquete ---")
    ip_origen = input("Ingrese IP Origen: ")
    puerto = input("Ingrese Puerto (ej: 80, 443, 22): ")
    protocolo = input("Ingrese Protocolo (ej: TCP, UDP): ")

    
    bloqueado = False
    for ip_b in ips_bloqueadas:
        if ip_origen == ip_b:
            bloqueado = True
            print(f"¡ALERTA DE SEGURIDAD! Paquete de {ip_origen} BLOQUEADO por regla.")
            print("-------------------------------------------------------------")
            generar_alerta(ip_origen, "IP Bloqueada")
            break 
    
    if not bloqueado:
        MAX_PAQUETES = 10
        if num_paquetes < MAX_PAQUETES:
            nuevo_registro = {
                'id': num_paquetes + 1,
                'ip': ip_origen,
                'puerto': puerto,
                'protocolo': protocolo
            }
            registros.append(nuevo_registro)
            num_paquetes += 1
            print(f"Paquete registrado con éxito. ID: {nuevo_registro['id']}")
        else:
            print("Advertencia: Registro Lleno (máximo 10 paquetes).")
    
    return num_paquetes 



def firewall_main():
    """Función principal del simulador de firewall."""
    
    
    registros = [] 
  
    ips_bloqueadas = ["192.168.1.100", "10.0.0.5"]
    
    num_paquetes = 0
    opcion_menu = ''
    
   
    while opcion_menu != '4':
        print("\n========== SIMULADOR DE FIREWALL ==========")
        print("1. Registrar Nuevo Paquete")
        print("2. Mostrar Registros de Paquetes")
        print("3. Mostrar Lista de IPs Bloqueadas")
        print("4. Salir")
        print("===========================================")
        opcion_menu = input("Seleccione una opción: ")
        
        
        if opcion_menu == '1':
        
            num_paquetes = registrar_paquete(registros, ips_bloqueadas, num_paquetes)
        
        elif opcion_menu == '2':
            mostrar_registros(registros)
            
        elif opcion_menu == '3':
            print("--- IPs Actualmente Bloqueadas ---")
            if ips_bloqueadas:
                for ip in ips_bloqueadas:
                    print(ip)
            else:
                print("No hay IPs en la lista de bloqueo.")
            print("-------------------------------------")
            
        elif opcion_menu == '4':
            print("Saliendo del simulador. ¡Adiós!")
            
        else:
            print("Opción no válida. Intente de nuevo.")


if __name__ == "__main__":
    firewall_main()