
# referencias
import sys
import os
from flask_cors import CORS,cross_origin
from flask import Flask, jsonify, request, render_template, current_app, send_file


#referencia de archivos negocio
from Negocio.Promociones import Promociones
from Negocio.Estados import Estados
from Negocio.Categorias import Categorias
from Negocio.Negocios import Negocios


#inicializa flask
app = Flask(__name__)


#seccion de apis externas-- se añaden a la appi principal
#app.register_blueprint(categorias_api)

#Configuración del Servidor y Variables Globales
app.secret_key = 'esto-es-una-clave-muy-secreta'
app.config["IMAGE_UPLOADS"] = 'C://Users/Edu/Documents/GitHub/api-asisthogar/app/static/uploads/'
app.config.from_pyfile('config.py')

#mensajes
msgErrorIntento = "Se ha provocado un error al intentar: "
msgIngresoExitoso ="Se ha ingresado de manera exitosa"

#Habilita CORS en todas las rutas de la API, permitiendo que clientes en otros dominios hagan solicitudes.
cors = CORS(app, resources={r"/*": {"origins": "*"}})
#index
@app.route('/')
def main():
    Promociones().Prueba()  
    return render_template('index.html')

#EndPoint Listar:
@app.route("/estados/", methods=["GET"]) #aqui es donde se genera la ruta del Endpoint el "link"
def ListarEstados():
    estados =  Estados().Listar()
    return jsonify({"completado":True, "estados":estados})
#Tarea crear endpoints para ingresar, modifica, y eliminar 

#Es aqui donde los resultados de estos EdnPoitn se prueban con Postman

#EndPoint Ingresar:  // probar con postman 
@app.route("/estados/", methods=["POST"])
def IngresarEstados():
    try:
        data = request.get_json()  # Obtiene los datos enviados en formato JSON
        nombre = data.get("nombre")  # Extrae el nombre del estado

        if not nombre:
            return jsonify({"error": "El campo 'nombre' es obligatorio"}), 400

        resultado = Estados().Ingresar(nombre) # Llama a la función con el nombre
        
        if resultado: 
            return jsonify({"mensaje": "Estado registrado correctamente"}), 201

    except Exception as e:
        return jsonify({"error al ingresar estado": str(e)}), 500 # el 500 es la respuesta en POSTMAN
    
    
#EndPoint Modificar:  // probar con postman 
@app.route("/estados/", methods=["PUT"])
def ModificarEstados():
    try: 
        data = request.get_json()
        id = None
        #para validar que los parametros vengan
        nombre = None 
        
        #Validaciones 
        if "nombre" in request.json:
            nombre = request.json["nombre"]
        else:
            return jsonify({"error": "variable nombre es requerida"})
            
            
        if "id" in request.json:
            id = request.json["id"]
        else:
           return jsonify({"error": "variabl id es requerida"})
                      
      #Validación de entrada (antes de consultar la BD)
        if id is None or id == "":
            return jsonify({"mensaje": "Debes ingresar un valor en la variable id"}), 400
        
        # Verificar si el ID existe antes de eliminar
        if not Estados().Consultar(id):   
            return {"error": "El estado no existe"}, 404  # Código 404 si el dato no está                            
        #Tarea -> aca va la validación de que el id no exista previamente
        #la idea es identificar que ya se hizo el registro, con funcion estado, osea la idea es ver si ese estado existe o no existe 
        
        resultado = Estados().Modificar(id, nombre)  # Llama a la función con el nombre y los lementos a modificar 

        return jsonify({"mensaje": "Estado Actulizado"}), 201

    except Exception as e:
        return jsonify({"error": str(e)}), 500 # el 500 es la respuesta en POSTMAN
        
#EndPoint Eliminar:  // probar con postman 
@app.route("/estados/", methods=["DELETE"])
def EliminarEstados():
    try:
        data = request.get_json()
        id = data.get("id")
         
        if not id:
            return jsonify({"error": "Falta el ID"}), 400

        #Validación de entrada (antes de consultar la BD)
        if id is None or id == "":
            return jsonify({"mensaje": "Debes ingresar un valor en la variable id"}), 400
        
        # Verificar si el ID existe antes de eliminar
        if not Estados().Consultar(id):   
            return {"error": "El estado no existe"}, 404  # Código 404 si el dato no está
        
        resultado = Estados().Eliminar(id)  # Llamar a la función con el ID    

        return jsonify({"mensaje": "Estado eliminado correctamente"}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500 # el 500 es la respuesta en POSTMAN
    
    
   #Crear EndPoint que lista las categorias de los productos.
   # se debe de recibir ej este endpint el parametro keytienda
   # se debe de hacer una consulta a la tabla negocios con la keytienda y si encuentra datos se debe sacar el id de la tabla y con ese id
   # con ese id del negocio se deberan buscar las categorias asociadas.
   
   #EndPoint Listar:
@app.route("/catalogo/categorias/", methods=["GET"])
def ListarCategorias():
    try:
        # Obtener el parámetro key de la solicitud
        Key = request.args.get("key")
        if not Key:
            return jsonify({"error": "La variable key es requerida"}), 400

        # Consulta del negocio por la key
        negocio = Negocios().ConsultaPorKey(Key)
        if not negocio:
            return jsonify({"error": "No se encontró el negocio para la key informada"}), 404

        # Obtener el ID del negocio
        NegocioId = negocio[0]["id"]

        # Consulta de categorías asociadas al negocio
        categorias = Categorias().ListarCategoria(NegocioId)
        if not categorias:
            return jsonify({"error": "No hay categorías asociadas a este negocio"}), 404

        # Retornar las categorías encontradas
        return jsonify({"completado": True, "categorias": categorias}), 200

    except Exception as e:
        print(f"Error en ListarCategorias: {e}")
        return jsonify({"error": "Ocurrió un error interno"}), 500

#Tarea crear endpoints para ingresar, modifica, y eliminar 
        
# Ejecución del Servidor
if __name__ == '__main__':
    app.run(debug=True,
            host=app.config.get("HOST", "localhost"),
            port=app.config.get("PORT", 5000))

    