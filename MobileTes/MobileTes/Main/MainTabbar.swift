//
//  MainHome.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class MainTabbar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTabBarList()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.hidesBackButton = true
    }
}

extension MainTabbar {
    @objc private func setTabBarList() {

        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: "Home" , image: nil, tag: 0)

        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem(title: "Profile" , image: nil, tag: 1)

        self.viewControllers = [homeViewController, profileViewController]
    }

}

