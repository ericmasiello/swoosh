//
//  BorderButton.swift
//  swoosh
//
//  Created by Eric Masiello on 1/2/18.
//  Copyright © 2018 Eric Masiello. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }
    

}
