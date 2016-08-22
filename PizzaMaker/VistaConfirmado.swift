//
//  VistaConfirmado.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 22/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class VistaConfirmado: UIViewController {

    var msg : String = ""
    @IBOutlet weak var confirmacion: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        confirmacion.text = msg
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
