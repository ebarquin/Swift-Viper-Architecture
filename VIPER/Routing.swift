//
//  Routing.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//
import UIKit
import Foundation
class Routing {
    let vc: TableViewController = TableViewController()
    var presenter = Presenter()
    let interactor = Interactor()
    var navigationController: UINavigationController?
    
    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    func openAddView() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let addVC:ViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        addVC.presenter = self.presenter
        
        vc.present(addVC, animated: true, completion: nil)
    }
    
}
