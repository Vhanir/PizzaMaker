//
//  ViewController.swift
//  PizzaMaker
//
//  Created by Oscar Manzaneque on 18/08/16.
//  Copyright © 2016 Prueba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tamaño: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaMasa
        sigVista.tamaño = tamaño.titleForSegmentAtIndex(tamaño.selectedSegmentIndex)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

