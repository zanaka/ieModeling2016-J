//
//  User+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var id: String?
    @NSManaged public var money: Int16
    @NSManaged public var password: String?

}
