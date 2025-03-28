from flask import Flask, jsonify, request, render_template, current_app, send_file
from Negocio.Promociones import Promociones

app = Flask(__name__)
app.config.from_pyfile('config.py')

def x():
    print("ingresa la funcion")
    Promociones().Prueba()  

x()
