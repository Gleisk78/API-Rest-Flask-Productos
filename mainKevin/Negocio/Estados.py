from helpers.ConexionMy import ConexionMy
from flask import request 

class Estados():
    def __init__(self):
        self.x=1
        
        
    #Funcion que lista estados /tarea :D
    def Listar(self):   
        try: 
                sql = "SELECT * FROM estados"
                resultado =  ConexionMy().ConsultaQuery(sql,())
                print(resultado, 'okay')
                return resultado
        except KeyError:
            raise # Noncompliant


    # Función que registra o ingresa un estado
    def Ingresar(self, nombre):
        try:
            # Consulta SQL corregida
            sql = "INSERT INTO estados (nombre) VALUES (%s)"
            # Ejecuta la query
            ConexionMy().EjecutaQuery(sql, (nombre,))
            print("Registro creado correctamente")
            return True
        except Exception as e:
            print(f"Error al intentar registrar el estado: {e}")
            raise Exception(f"Error al registrar estado: {e}")
               
    #Funcion que modifica /tarea:D
    def Modificar(self, id, nombre):
        
        try:
            sql  = "UPDATE estados SET nombre = %s WHERE id = %s" # es necesario que marques el id del dato a cambiar para poder identificarlo
            ConexionMy().EjecutaQuery(sql,(nombre, id)) # conexion a ala base de datos 
            print("Estado Actualizado correctamente")
            return True
        except Exception as e:
            print("Error al Actualizar:", e)
            raise
    
    
    #Funcion que elimina /tarea:D 
    def Eliminar(self, id):
            
        try:
            sql = "DELETE FROM estados WHERE id = %s"
            ConexionMy().EjecutaQuery(sql, (id,))
            print("Estado Eliminado Correctamente")
            return True
        except Exception as e:
            print("Error al Eliminar:", e)
            raise
        

    def Consultar(self, id):
        try:
            sql = "SELECT id FROM estados WHERE id = %s"
            resultado = ConexionMy().ConsultaQuery(sql, (id,))
            print("Resultado de Validar:", resultado)  
            # Verifica si 'resultado' es una lista vacía, None o si realmente tiene un ID válido
            if resultado and len(resultado) > 0:
                return True  # El ID existe en la BD
            else:
                return False  # No existe
            
        except Exception as e:
            print("Error en la validación no se encuentra el Dato:", e)
            return False

                
        