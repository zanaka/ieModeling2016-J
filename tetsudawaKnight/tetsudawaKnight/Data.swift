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
    
    init(name :String, yen :Int16)
    {
        self.name = name
        self.yen = yen
    }
}

var taskList: [TaskStruct] =
[
    TaskStruct(name: "掃除する", yen: 100),
    TaskStruct(name: "食器洗い", yen: 200),
    TaskStruct(name: "肩もみ", yen: 50)
]

var money = 1000
var payHistoryList = ["100"]
