//
//  Note+CoreDataProperties.swift
//  SwiftyNotes
//
//  Created by Kerolos Nakhla on 12/3/15.
//  Copyright © 2015 Kerolos Nakhla. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Note {

    @NSManaged var body: String?
    @NSManaged var timeStamp: NSDate?
    @NSManaged var noteTitle: String?

}
