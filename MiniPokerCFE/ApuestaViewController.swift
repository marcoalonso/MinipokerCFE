//
//  ApuestaViewController.swift
//  MiniPokerCFE
//
//  Created by marco rodriguez on 03/08/22.
//

import UIKit

class ApuestaViewController: UIViewController {
    
    //Esta variable ayuda a recibir parametros de la 1 ventana
    var recibirInformacion: String = "aksdajkdsjasd"

    @IBOutlet weak var apuestaActualLabel: UILabel!
    @IBOutlet weak var imagenApuesta: UIImageView!
    @IBOutlet weak var cantidadApuestaTextField: UITextField!
    
    //opcionales -> ? es un opcional
    var apuesta: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        apuestaActualLabel.text = apuesta ?? "0.0"
        print(recibirInformacion)
        //apuesta = "50"
        
        //! si o si hay un valor
        
        //extraccion de un opcional de manera segura
//        if apuesta != nil {
           
//        } else {
//            print("Apuesta esta vacio")
//        }
        
//        print(apuesta ?? "0.0")
        
        //print(apuesta!)
        
    }
  
    @IBAction func apostarButton(_ sender: UIButton) {
        //Quiero sumar el valor introducido en el TextField y mostrarlo en apuestaActualLabel
        if cantidadApuestaTextField.text == "" {
            apuestaActualLabel.text = "$ 0.0"
        } else {
            apuestaActualLabel.text = "$ \(cantidadApuestaTextField.text ?? "0.0")"
        }
        
        //Despues quiero regresar a la pantalla anterior y traerme esa informacion.
      dismiss(animated: true)
        
        ///opcional
        ///Puedo agregar una Alerta que le de dos opciones al usuario:
        ///1.-  Aceptar y apostar la cantidad introducida.
        ///2.- Cancelar y modificar la apuesta.
        
    }
    
}
