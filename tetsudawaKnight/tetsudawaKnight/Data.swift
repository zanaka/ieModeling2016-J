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
    var isComp : String = "false"
    
    init(name :String, yen :Int16, id :String, iscomp :String)
    {
        self.name = name
        self.yen = yen
        self.id = id
        self.isComp = iscomp
    }
}

var taskList: [TaskStruct] =
[

]

var HisTaskList: [TaskStruct] =
[

]


struct UserStruct
{
    var name : String = "username"
    var id :String = "id"
    var yen :Int16 = 0
   
    init(name: String, yen:Int16, id:String)
    {
        self.name = name
        self.yen = yen
        self.id = id
    }
}

var ChildList: [UserStruct] =
[

]

var money = 1000
var pass = "0"


struct PayHistoryStruct
{
    var id :String = "id"
    var price : Int16 = 0
    var timeStamp = Date()
    
    init(price :Int16, id:String, time :Date)
    {
        self.price = price
        self.id = id
        self.timeStamp = time
    }
}

var PayHistoryList :[PayHistoryStruct] =
[

]
