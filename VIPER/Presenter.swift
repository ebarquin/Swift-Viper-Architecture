//
//  Presenter.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import Foundation
class Presenter {
    var view: TableViewController?
    var interactor: Interactor?
    var routing: Routing?
    
    init() {
        
    }
    func addNewObject() {
        routing!.openAddView()
    }
    
    func addNewObjectWithData(nombre n: String, apellido s: String) {
        interactor?.addNewPersonWithData(nombre: n, apellido: s)
    }
    
    func updateObjects(objects: [String]) {
        view?.setListWithObjects(objects: objects)
    }
}
