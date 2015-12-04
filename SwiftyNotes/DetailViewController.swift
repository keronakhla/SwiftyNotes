//
//  DetailViewController.swift
//  SwiftyNotes
//
//  Created by Kerolos Nakhla on 11/29/15.
//  Copyright © 2015 Kerolos Nakhla. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var textView: UITextView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()

        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("timeStamp")!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()

        //textView.text = "SDFSDFSDFDSFDSFSD"
        
//        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        let managedContext = appDelegate.managedObjectContext
//        
//        let entity = NSEntityDescription.entityForName("note", inManagedObjectContext: managedContext)
//        let note = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        //note.
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

