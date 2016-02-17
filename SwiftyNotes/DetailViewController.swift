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

    @IBOutlet weak var detailDescriptionLabel: UITextField!
    @IBOutlet weak var textView: UITextView!
    var managedContext: NSManagedObjectContext!

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
                //set title...
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()

        textView.clipsToBounds = true
        textView.layer.cornerRadius = 5
        
        //textView.text = "SDFSDFSDFDSFDSFSD"
        
        let string = textView.text
        let types: NSTextCheckingType = [.Address, .PhoneNumber]
        let detector = try? NSDataDetector(types: types.rawValue)
        detector?.enumerateMatchesInString(string, options: [], range: NSMakeRange(0, (string as NSString).length)) { (result, flags, _) in
            print(result)
        }
    }
//    func NSTextCheckingTypesFromUIDataDetectorTypes(dataDetectorType: UIDataDetectorTypes) -> NSTextCheckingType {
//        var textCheckingType: NSTextCheckingType = []
//        
//        if dataDetectorType.contains(.Address) {
//            textCheckingType.insert(.Address)
//        }
//        
//        if dataDetectorType.contains(.CalendarEvent) {
//            textCheckingType.insert(.Date)
//        }
//        
//        if dataDetectorType.contains(.Link) {
//            textCheckingType.insert(.Link)
//        }
//        
//        if dataDetectorType.contains(.PhoneNumber) {
//            textCheckingType.insert(.PhoneNumber)
//        }
//        
//        return textCheckingType
//    }
    


    @IBAction func shareNote(sender: AnyObject) {
        
        let activityViewController : UIActivityViewController = UIActivityViewController(activityItems: [detailDescriptionLabel.text!, textView.text!], applicationActivities: nil)
        self.presentViewController(activityViewController, animated: true, completion: nil)

        
    }


}

