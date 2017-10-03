//
//  InputOutput.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    func addNewPersonWithData(nombre: String, apellido: String)
}

protocol InteractorProtocolOutput {
    func updateObjects(objects: [String])
}
