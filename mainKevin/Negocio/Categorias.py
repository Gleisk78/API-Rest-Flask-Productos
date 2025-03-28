from helpers.ConexionMy import ConexionMy
from flask import request 


class Categorias():
    def __init__(self):
        self.x=1
        
   #Funcion que lista estados /tarea :D
    def ConsultaPorKey(self, Key):   
        try: 
                sql = "SELECT * FROM estados"
                resultado =  ConexionMy().ConsultaQuery(sql,())
                print(resultado, 'okay')
                return resultado
        except KeyError:
            raise # Noncompliant
  
  
    # Función que lista categorías por el ID del negocio
    def ListarCategoria(self, id):   
        try:
            sql = "SELECT id, nombre FROM categorias WHERE negocioId = %s"
            resultado = ConexionMy().ConsultaQuery(sql, (id,))
            print("Resultado de ListarCategoria:", resultado)  # Para depuración
            return resultado if resultado else []  # Retorna una lista vacía si no hay resultados
        except Exception as e:
            print(f"Error en ListarCategoria: {e}")
            return []  # Devolver una lista vacía si hay error


    #Funcion que registra o Ingresa /tarea:D
    def Ingresar(self, nombre):
        try:
            sql = "INSERT INTO estados (nombre) VALUE (%s)" # sentencia sql direccionando a tabla estados, el valor sera enviado en postman (%s)
            ConexionMy().EjecutaQuery(sql,(nombre)) # conexion a la base de datos // se usa EjecutaQuery en vez del  ConsultQuery
            print("Registro creado correctamente")
            return True
        except Exception as e:
            raise Exception("Faltan parametros de empresa para emitir documentos!")
            return False
            
               
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

                
    