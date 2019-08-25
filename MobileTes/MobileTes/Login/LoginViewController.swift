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
        self.title = "Login"
        
        /// Set TextField Email
        self.tfEmail.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        self.tfEmail.setBorder(color: UIColor.black)
        self.tfEmail.keyboardType = .emailAddress
        self.tfEmail.delegate = self
        
        /// Set TextField Password
        self.tfPassword.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        self.tfPassword.setBorder(color: UIColor.black)
        self.tfPassword.isSecureTextEntry = true
        self.tfPassword.keyboardType = .default
        self.tfEmail.delegate = self
        
        /// Set Button
        self.btnLogin.setBorderWithTitle(borderWidth: 1, color: UIColor.black)
        self.btnLogin.setTitle("Masuk", for: .normal)
        self.btnLogin.setTitleColor(UIColor.black, for: .normal)
        self.btnLogin.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
    }
    
    @objc func doLogin() {
        doValidate()
    }
    
    func doValidate() {
        let email = tfEmail.text!
        let password = tfPassword.text!
        
        if email.count > 0 && email.count > 3 {
            if password.count > 0 && password.count >= 5 {
    //                    doLogin(userName: username, password: password)
                UserDefaults.standard.set(true, forKey: "isLogged")
                self.navigationController?.pushViewController(MainTabbar(), animated: true)
            } else {
                showAlert(title: "Error", message: "Silahkan input Password Anda")
                tfPassword.becomeFirstResponder()
            }
        } else {
            showAlert(title: "Error", message: "Silahkan input Email Anda")
            tfEmail.becomeFirstResponder()
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = textField.text,
            let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                return false
        }
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count
        return count <= 30
    }
}
