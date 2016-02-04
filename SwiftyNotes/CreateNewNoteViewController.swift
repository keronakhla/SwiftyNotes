//
//  CreateNewNoteViewController.swift
//  SwiftyNotes
//
//  Created by Kerolos Nakhla on 1/3/16.
//  Copyright © 2016 Kerolos Nakhla. All rights reserved.
//

import UIKit
import CoreData

class CreateNewNoteViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {


    var managedObjectContext : NSManagedObjectContext?
    lazy var note: Note? = {
        if let context = self.managedObjectContext {
            return NSEntityDescription.insertNewObjectForEntityForName("Note", inManagedObjectContext: context) as? Note
        }
        return .None
    }()
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyField: UITextView!
    
    @IBAction func doneButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        titleField.becomeFirstResponder()
    }

    @IBAction func saveNote(sender: AnyObject) {
        note?.noteTitle = titleField.text
        note?.body = bodyField.text
        
        if let managedObjectContext = managedObjectContext {
            do {
                try managedObjectContext.save()
            }
            catch let error as NSError {
                print("Error saving \(error)", terminator:"")
            }
        }
        


    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
