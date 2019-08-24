//
//  Button+Extension.swift
//  MobileTes
//
//  Created by Fadil on 24/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setBorderWithTitle(borderWidth: CGFloat, color: UIColor) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = color.cgColor
    }
}
