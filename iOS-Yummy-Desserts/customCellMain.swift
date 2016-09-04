//
//  customCellMain.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//

import UIKit

class customCellMain: UITableViewCell {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
      
        
        
    }

    
    func configCell(yummy: Yum) {
    
        mainLbl.text = yummy.yummy_title
        mainImg.image = yummy.getYummyImages()
    
    
    }
    
    
    
}
