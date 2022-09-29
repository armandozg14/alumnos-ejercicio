//
//  alumno.swift
//  NavControllerAlumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

class Alumno {
    var nombre : String
    var carrera : String
    var matricula : String
    var edad: Int
    var materias: [Materia]
   
    
    init(nombre: String, carrera: String, matricula: String, edad: Int, materias: [Materia]){
        self.nombre = nombre
        self.carrera = carrera
        self.matricula = matricula
        self.edad = edad
        self.materias = materias
    }
}
