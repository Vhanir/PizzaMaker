//
//  VistaQuesoViewController.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 18/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class VistaQuesoViewController: UIViewController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    
    @IBOutlet weak var mozarela: UISwitch!
    @IBOutlet weak var chedar: UISwitch!
    @IBOutlet weak var parmesano: UISwitch!
    @IBOutlet weak var sinQueso: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaIngredientes
        sigVista.tamaño = tamaño
        sigVista.masa = masa
        sigVista.queso = queso
    }
    
    
    @IBAction func selectMozarela() {
        if(mozarela.on){
            chedar.setOn(false, animated: true)
            parmesano.setOn(false, animated: true)
            sinQueso.setOn(false, animated: true)
            queso = "mozarela"
        }
    }
    
    @IBAction func selectChedar() {
        if(chedar.on){
            mozarela.setOn(false, animated: true)
            parmesano.setOn(false, animated: true)
            sinQueso.setOn(false, animated: true)
            queso = "chedar"
        }

    }
    
    @IBAction func selectParmesano() {
        if(parmesano.on){
            chedar.setOn(false, animated: true)
            mozarela.setOn(false, animated: true)
            sinQueso.setOn(false, animated: true)
            queso = "parmesano"
        }
    }
    
    @IBAction func selectSinQueso() {
        if(sinQueso.on){
            chedar.setOn(false, animated: true)
            parmesano.setOn(false, animated: true)
            mozarela.setOn(false, animated: true)
            queso = "Sin queso"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
