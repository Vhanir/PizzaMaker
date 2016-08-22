//
//  VistaConfirmacion.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 22/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    @IBOutlet weak var labelTamaño: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngredientes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        labelTamaño.text = tamaño
        labelMasa.text = masa
        labelQueso.text = queso
        labelIngredientes.text = ingredientes
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var msg = ""
        if tamaño == "" || masa == "" || queso == "" || ingredientes == ""{
            
            if(tamaño == ""){
                msg += "No has seleccionado el tamaño de la pizza\n"
            }
            if masa == ""{
                msg += "No has seleccionado el tipo de masa\n"
            }
            if(queso == ""){
                msg += "No has seleccionado el queso\n"
            }
            if(ingredientes == ""){
                msg += "No has seleccionado ningun ingrediente"
            }
            
            msg += "\n\nPor favor, vuelve y completa tu pizza"
            
        }else{
            msg = "Tu pedido esta en marcha\nEstara listo en unos minutos\ngracias por confiar en PizzaMaker"
        }
        
        let sigVista = segue.destinationViewController as! VistaConfirmado
        sigVista.msg = msg
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmar(sender: AnyObject) {
        
        
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
