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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.ivImage.contentMode = .scaleAspectFill
    }
    
}
