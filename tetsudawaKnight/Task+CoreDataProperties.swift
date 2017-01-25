//
//  Task+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/01/25.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task");
    }

    @NSManaged public var clearPrice: Int16
    @NSManaged public var id: String?
    @NSManaged public var taskName: String?

}
