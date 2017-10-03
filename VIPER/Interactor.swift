//
//  Interactor.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import Foundation
class Interactor: InteractorProtocolInput {
    let dataBase : DataBase?
    var presenter: Presenter?
    
    init() {
        dataBase = DataBase()
    }
    
    func addNewPersonWithData(nombre:String, apellido: String)  {
        if (nombre.characters.count > 0 && apellido.characters.count > 0 ) {
            let persona = Persona()
            persona.nombre = nombre
            persona.apellido = apellido
            
            if (dataBase?.personas) != nil {
                dataBase?.personas?.append(persona)
            } else {
                dataBase?.personas = [Persona]()
                dataBase?.personas?.append(persona)
            }
            
        }
        self.updateList()
    }
    
    func updateList() {
        var arrayPersonas = [String]()
        for persona in dataBase!.personas! {
            arrayPersonas.append(persona.nombre! + " " + persona.apellido!)
        }
        presenter!.updateObjects(objects: arrayPersonas)
    }
}
