//
//  MainNavigation.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class MainNavigation: UINavigationController {

    override func viewDidLoad() {
        let status = UserDefaults.standard.bool(forKey: "isLogged")

        if status == false {
            self.viewControllers = [LoginViewController()]
        } else {
            self.viewControllers = [MainTabbar()]
        }
    }
}

