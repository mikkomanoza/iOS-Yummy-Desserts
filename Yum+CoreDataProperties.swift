//
//  Yum+CoreDataProperties.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Yum {

    @NSManaged var yummy_image: NSData?
    @NSManaged var yummy_title: String?
    @NSManaged var yummy_place_to_buy: String?
    @NSManaged var yummy_review: String?

}
