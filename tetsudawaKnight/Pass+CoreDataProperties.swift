//
//  Pass+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/02/21.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import Foundation
import CoreData


extension Pass {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pass> {
        return NSFetchRequest<Pass>(entityName: "Pass");
    }

    @NSManaged public var password: String?

}
