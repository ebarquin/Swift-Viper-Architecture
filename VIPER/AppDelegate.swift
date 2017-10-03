//
//  AppDelegate.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let routing = Routing()
        
        self.window = UIWindow()
        let screen = UIScreen.main
        
        self.window?.frame = screen.bounds
        self.window?.rootViewController = routing.navigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }


}

