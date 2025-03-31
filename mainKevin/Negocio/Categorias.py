from helpers.ConexionMy import ConexionMy
from flask import request 


class Categorias():
    def __init__(self):
        self.x=1
  
  
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

    
