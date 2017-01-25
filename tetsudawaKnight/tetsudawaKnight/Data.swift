//
//  Data.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/28.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import Foundation


// var tasklist = ["掃除機する", "食器洗い",  "肩もみ"]
struct TaskStruct
{
    var name :String = "task"
    var yen : Int16 = 100
    var id : String = "id"
    
    init(name :String, yen :Int16, id :String)
    {
        self.name = name
        self.yen = yen
        self.id = id
    }
}

var taskList: [TaskStruct] =
[

]

var money = 1000
var payHistoryList = ["100"]
