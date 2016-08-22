//
//  VistaMasa.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 22/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {
    var tamaño : String = ""
 
    @IBOutlet weak var masa: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        print(tamaño)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaQuesoViewController
        sigVista.tamaño = tamaño
        sigVista.masa = masa.titleForSegmentAtIndex(masa.selectedSegmentIndex)!
        
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
