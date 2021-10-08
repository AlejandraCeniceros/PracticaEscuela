//
//  Alumno.swift
//  Escuela
//
//  Created by Alumno on 10/7/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Alumno {
    var nombre : String
    var matricula : String
    var correo : String
    var celular : String
    var carrera : String
    
    init(nombre: String, matricula: String, correo: String, celular: String, carrera: String) {
        self.matricula = matricula
        self.nombre = nombre
        self.correo = correo
        self.carrera = carrera
        self.celular = celular
       
    }
}
