import pymysql
from flask import Flask, jsonify , Blueprint, current_app

class ConexionMy():

    def __init__(self):
        self.servidor = current_app.config['CONEXION_SERVIDOR']
        self.usuario  = current_app.config['CONEXION_USUARIO']
        self.password = current_app.config['CONEXION_PASSWORD']
        self.baseDatos = current_app.config['CONEXION_BD']
        self.puerto = current_app.config["CONEXION_PUERTO"]


    def ConsultaQuery_(self, query):
        results =[]
        db = pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)
        cursor = db.cursor()
        cursor.execute(query)
        datos = cursor.fetchall()
        columns = [column[0] for column in cursor.description]
        for row in datos:
            results.append(dict(zip(columns,row))) 
        db.close()
        return results
    
    def ConsultaQuery(self, query, data):
        try:
            results =[]
            #print(self.servidor)
            db = pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)
            #print(db)
            cursor = db.cursor()
            print(cursor.execute(query, data))
            datos = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            for row in datos:
                results.append(dict(zip(columns,row))) 
            db.close()
            return results
        except Exception as inst:
            print( str(inst))

    def ConsultaQueryId(self, query):
        db = pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)
        cursor = db.cursor()
        cursor.execute(query)
        db.commit()
        datos = cursor.fetchall()
        db.close()
        return db.insert_id()
  
    #version parametros evita sql inyect
    def EjecutaQuery(self, query, datos):
        db = pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)
        cursor = db.cursor()
        try:
            cursor.execute(query,datos)
            db.commit()
            return True
        except Exception as inst:
                db.rollback()
                print ('error'+str(inst))
                raise ValueError(str(inst))
        db.close()
        
    def EjecutaQueryId(self, query, datos):
        db = pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)
        cursor = db.cursor()
        try:
            cursor.execute(query,datos)
            db.commit()
            return cursor.lastrowid
        except Exception as inst:
                db.rollback
                print (inst)
                raise ValueError(str(inst))
        db.close()

    def Conexion(self):
        return pymysql.connect(host=self.servidor,user=self.usuario,password=self.password,database=self.baseDatos,port=self.puerto)

    
    