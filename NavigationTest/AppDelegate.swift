//
//  AppDelegate.swift
//  NavigationTest
//
//  Created by Pavel Gurov on 20/04/2017.
//  Copyright © 2017 Pavel Gurov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

// to crash it, tap back button 2 times to return to the first controller
        let root = window?.rootViewController as! UINavigationController
        root.pushViewController(UIViewController(), animated: true)
        perform(#selector(performAnotherPush(_:)), with: root, afterDelay: 0.1)
        
        return true
    }
    
    @objc func performAnotherPush(_ navVC: UINavigationController) {
        navVC.pushViewController(UIViewController(), animated: true)
    }
}

