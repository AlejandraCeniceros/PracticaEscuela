//
//  ViewController.swift
//  Escuela
//
//  Created by Alumno on 10/7/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaAlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 144
    }
    
    
    var alumnos: [Alumno] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Juan", matricula: "1234", correo: "Juanq22.gmail.com", celular: "123456", carrera: "mecatronica"))
        alumnos.append(Alumno(nombre: "Jose", matricula: "90897", correo: "jose.gmail.com", celular: "789654", carrera: "nutricion"))
       
    }


}

