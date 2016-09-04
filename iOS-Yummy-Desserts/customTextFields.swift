//
//  customTextFields.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//

import UIKit

class customTextFields: UITextField {

  
    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
        
    }

}
