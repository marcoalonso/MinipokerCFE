//
//  ViewController.swift
//  MiniPokerCFE
//
//  Created by marco rodriguez on 02/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cantidadApuestaLabel: UILabel!
    
    @IBOutlet weak var carta1: UIImageView!
    @IBOutlet weak var carta2: UIImageView!
    @IBOutlet weak var carta3: UIImageView!
    @IBOutlet weak var carta4: UIImageView!
    @IBOutlet weak var carta5: UIImageView!
    
    // MARK: - Variables
    //En este arreglo se guardarán las cartas a mostrar
    var baraja = [#imageLiteral(resourceName: "diezP"), #imageLiteral(resourceName: "diamantes J"), #imageLiteral(resourceName: "picas K"), #imageLiteral(resourceName: "trebol 5"), #imageLiteral(resourceName: "diamantes 8"), #imageLiteral(resourceName: "picas 5"),  #imageLiteral(resourceName: "trebol 3"), #imageLiteral(resourceName: "corazones 8"), #imageLiteral(resourceName: "trebol A") , #imageLiteral(resourceName: "trebol 5"), #imageLiteral(resourceName: "diamantes 7"), #imageLiteral(resourceName: "trebol K")  ]
    var otraBaraja = [UIImage(named: "corazones 1"), UIImage(named: "corazones 2"), UIImage(named: "corazones 1")]
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: Funciones

    @IBAction func jugarButton(_ sender: UIButton) {
        
        let num1 = Int.random(in: 0..<6)
        let num2 = Int.random(in: 0..<6)
        let num3 = Int.random(in: 0..<6)
        let num4 = Int.random(in: 0..<6)
        let num5 = Int.random(in: 0..<6)
        
        
        carta1.image = baraja[num1]
        carta2.image = baraja[num2]
        carta3.image = baraja[num3]
        carta4.image = baraja[num4]
        carta5.image = baraja[num5]
    }
    
}

