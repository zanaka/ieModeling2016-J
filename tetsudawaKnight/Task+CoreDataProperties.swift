//
//  Task+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/01/22.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task");
    }

    @NSManaged public var taskName: String?
    @NSManaged public var clearPrice: Int16
}
