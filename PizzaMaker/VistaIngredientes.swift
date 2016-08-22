//
//  VistaIngredientes.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 22/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaConfirmacion
        sigVista.tamaño = tamaño
        sigVista.masa = masa
        sigVista.queso = queso
        var ing : String = ""
        for ingrediente in ingredientes{
            ing += ingrediente+", "
        }
        
        if ing.characters.count > 0{
            ing = String(ing.characters.dropLast(2))
        }
        
        sigVista.ingredientes = ing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     Al pulsar en uno de los switch comprobamos si esta seleccionada, en ese caso comprobamos el numero de ingredientes seleccionados. Si es 5 deseleccionamos y mostramos alerta. si no introducimos en el aarray
     Si no esta seleccionado quitamos del array.
     */
    @IBAction func seleccionaIngrediente(sender: UISwitch) {
        let ingredient = sender.accessibilityLabel!
        if(sender.on) {
            
            if(ingredientes.count == 5){
                sender.setOn(false, animated: false)
                let alertController = UIAlertController(title: "Demasiados ingredientes", message: "Solo puedes seleccionar 5 ingredientes", preferredStyle: .Alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction!) in
                    
                }
                alertController.addAction(OKAction)
                
                self.presentViewController(alertController, animated: true, completion:nil)
            }else{
                ingredientes.append(ingredient)
                print(ingredient)
            }
        }else{
            ingredientes.removeAtIndex(ingredientes.indexOf(ingredient)!)
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
