//
//  ViewController.swift
//  iOS-Yummy-Desserts
//
//  Created by John Paul Manoza on 04/09/2016.
//  Copyright © 2016 Nostalgic Kids. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var yummy = [Yum]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    
    
    override func viewDidAppear(animated: Bool) {
        
        FetchRequestAndResult()
        tableView.reloadData()
    }
   
    
    func FetchRequestAndResult(){
    
    let app = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let FetchRequest = NSFetchRequest(entityName: "Yum")
        
        
        do {
            
            let Result = try context.executeFetchRequest(FetchRequest)
            self.yummy = Result as! [Yum]
        
        } catch let err as NSError {
        
            print(err.debugDescription)
        
        }
    
    
    
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("customCellMain") as? customCellMain {
        
            
            let yums = yummy[indexPath.row]
            
            cell.configCell(yums)

        
        return cell
            
        } else {
        
            return customCellMain()
        
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return yummy.count
    }


}

