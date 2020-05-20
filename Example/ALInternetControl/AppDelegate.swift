//
//  AppDelegate.swift
//  ALInternetControl
//
//  Created by sonifex on 05/20/2020.
//  Copyright (c) 2020 sonifex. All rights reserved.
//

import UIKit
import ALInternetControl


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var internetCont: ALInternetControl?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        internetCont = ALInternetControl.init(errorVC: NoInternetViewController())

        return true
    }


}

