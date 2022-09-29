//
//  DetallesAlumnoController.swift
//  NavControllerAlumno
//
//  Created by Alumno on 9/27/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class DetallesAlumnosController : UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    
    var alumno : Alumno?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if alumno != nil{
            self.title = alumno!.nombre
            lblMatricula.text = alumno!.matricula
            lblEdad.text = "\(alumno!.edad)"
            lblCarrera.text = alumno!.carrera
        }else{
            self.title = "Detalles de Alumnos"
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 87
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumno!.materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias") as? CeldaMateriasController
        celda?.lblNombre.text = alumno!.materias[indexPath.row].nombre
        celda?.lblCodigo.text = alumno!.materias[indexPath.row].codigo
        return celda!
    }
}
