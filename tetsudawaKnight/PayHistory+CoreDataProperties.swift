//
//  PayHistory+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/02/21.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import Foundation
import CoreData


extension PayHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PayHistory> {
        return NSFetchRequest<PayHistory>(entityName: "PayHistory");
    }

    @NSManaged public var price: Int16
    @NSManaged public var id: String?
    @NSManaged public var timeStamp: NSDate?

}
