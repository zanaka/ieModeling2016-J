//
//  Kozin+CoreDataProperties.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Kozin {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Kozin> {
        return NSFetchRequest<Kozin>(entityName: "Kozin");
    }

    @NSManaged public var id: String?
    @NSManaged public var money: Int16
    @NSManaged public var password: Int16

}
