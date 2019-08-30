//
//  documents+coreDataClass.swift
//  Documents
//
//  Created by Henry Sills on 8/30/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit
import CoreData


/* From Categorical expensese but wasn't sure how to integrate it for this challenge.
 
 
@objc(Category)
public class Document: NSManagedObject {
    var doc: [Document]? {
        return self.rawExpenses?.array as? [Document]
    }
    
    convenience init?(title: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else{
                return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        self.title = title
    }
}

 */
