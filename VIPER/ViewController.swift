//
//  ViewController.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Add(_ sender: Any) {
        presenter?.addNewObjectWithData(nombre: self.nombre.text!, apellido: self.apellido.text!)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func cancel(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
