from helpers.ConexionMy import ConexionMy
class Promociones():
    def __init__(self):
        self.x=1
        
    def Prueba(self):
            try:
                sql = "SELECT * FROM productos"
                resultado =  ConexionMy().ConsultaQuery(sql,())
                print(resultado, 'okay')
                return resultado
            except Exception as error:
                raise error
    
    def Promocion1(self):   
        try:
                sql = "SELECT * FROM productos"
                resultado =  ConexionMy().ConsultaQuery(sql,())
                print(resultado, 'okay')
                return resultado
        except KeyError:
            raise # Noncompliant
        


