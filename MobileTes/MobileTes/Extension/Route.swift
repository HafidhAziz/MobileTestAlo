//
//  Route.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class Routes: NSObject {
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setAppRootViewController(with viewController: UIViewController) {
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
}
