//
//  ProfileViewController.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblNoHp: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "Profile"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        self.containerView.layer.cornerRadius = 20.0
        self.containerView.layer.shadowColor = UIColor.gray.cgColor
        self.containerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.containerView.layer.shadowRadius = 12.0
        self.containerView.layer.shadowOpacity = 0.7
        
        self.lblName.text = "Fadil Irshad"
        self.lblGender.text = "Male"
        self.lblNoHp.text = "+6281313456756"
        self.lblNoHp.font = lblNoHp.font.italic
    }
}
