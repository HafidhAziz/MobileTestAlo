//
//  MainHome.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class MainTabbar: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTabBarList()
//        self.navigationItem.hidesBackButton = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.hidesBackButton = true
    }
}

extension MainTabbar {
    @objc private func setTabBarList() {

        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: "" , image: UIImage(named: "home"), tag: 0)
        homeViewController.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)

        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem(title: "" , image: UIImage(named: "profile"), tag: 1)
        profileViewController.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
        
        self.tabBar.tintColor = UIColor.black

        self.viewControllers = [homeViewController, profileViewController]
    }

}

