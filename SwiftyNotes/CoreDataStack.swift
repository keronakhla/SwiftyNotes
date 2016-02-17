//
//  CoreDataStack.swift
//  SwiftyNotes
//
//  Created by Kerolos Nakhla on 2/17/16.
//  Copyright © 2016 Kerolos Nakhla. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    let modelName = "SwiftyNotes"
    
    private lazy var applicationDocumentsDirectory: NSURL = {
        let urls = NSFileManager.defaultManager().URLsForDirectory(
            .DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count-1]
    }()
    
}