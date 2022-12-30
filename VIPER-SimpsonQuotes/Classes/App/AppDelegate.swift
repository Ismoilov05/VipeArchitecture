//
//  AppDelegate.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.backgroundColor = .white
        window?.rootViewController = QuotesRouter.createModule()
        window?.makeKeyAndVisible()
        
        return true
    }


}

