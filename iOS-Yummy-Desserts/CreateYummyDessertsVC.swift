//
//  CreateYummyDessertsVC.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//

import UIKit
import CoreData

class CreateYummyDessertsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var YummyTitle: UITextField!
    @IBOutlet weak var YummyPlace: UITextField!
    @IBOutlet weak var YummyReview: UITextField!
    
    @IBOutlet weak var YummyFoodImg: UIImageView!
    
 
    
    var imagePicker: UIImagePickerController!
    var yummy = [Yum]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        YummyFoodImg.image = image
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addYummyImage(sender: AnyObject!){
    
    presentViewController(imagePicker, animated: true, completion: nil)
    
    }
    
    
    @IBAction func onCreateYummyDesserts(sender: AnyObject){
    
        if let yummyfoods = YummyTitle.text where yummyfoods != "" {
        
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            
            let context = app.managedObjectContext
            
            let entity = NSEntityDescription.entityForName("Yum", inManagedObjectContext: context)!
            
            let yummyFoods = Yum(entity: entity, insertIntoManagedObjectContext: context)
            
            yummyFoods.yummy_title = yummyfoods
            yummyFoods.yummy_place_to_buy = YummyPlace.text
            yummyFoods.yummy_review = YummyReview.text
            
            yummyFoods.setYummyImages(YummyFoodImg.image!)
            
            
            context.insertObject(yummyFoods)
            
            do {
            
                try context.save()
            
            } catch {
            
                print("could not save it")
            
            }
        
        }
    
        self.navigationController?.popViewControllerAnimated(true)
    
    }

    

    

}
