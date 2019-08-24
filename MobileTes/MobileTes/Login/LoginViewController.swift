//
//  LoginViewController.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        self.tfEmail.placeholder = "Email"
        self.tfPassword.placeholder = "Password"
        
        self.btnLogin.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
    }
    
    @objc func doLogin() {
        self.navigationController?.pushViewController(MainTabbar(), animated: true)
    }
}
