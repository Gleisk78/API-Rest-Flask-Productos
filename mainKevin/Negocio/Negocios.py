from helpers.ConexionMy import ConexionMy
from flask import request 

class Negocios():
    def __init__(self):
        self.x=1
        

   #Funcion que lista estados /tarea :D
    def ConsultaPorKey(self, Key):   
        try: 
                sql = "SELECT * FROM negocios WHERE key_tienda = %s"
                resultado =  ConexionMy().ConsultaQuery(sql,(Key))
                print(resultado, 'okay')
                return resultado
        except KeyError:
            raise # Noncompliant

                
        
