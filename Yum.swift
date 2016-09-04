//
//  Yum.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Yum: NSManagedObject {


    func setYummyImages(img: UIImage){
    
        let image = UIImagePNGRepresentation(img)
        self.yummy_image = image
    
    }
    
    
    func getYummyImages() -> UIImage {
    
        let img = UIImage(data: self.yummy_image!)!
        
        return img
        
    }

}
