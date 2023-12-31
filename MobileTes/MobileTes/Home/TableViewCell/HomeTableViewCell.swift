//
//  HomeTableViewCell.swift
//  MobileTes
//
//  Created by Fadil on 25/08/19.
//  Copyright © 2019 Fadil. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var containerImage: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.containerImage.layer.borderWidth = 1
        self.containerImage.layer.borderColor = UIColor.black.cgColor
        self.ivImage.contentMode = .scaleToFill
    }
    
}
