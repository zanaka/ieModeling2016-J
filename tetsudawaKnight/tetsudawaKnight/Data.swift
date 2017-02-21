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
    var isParent : String = "true"
    var password : String = "0000"
    
    init(name: String, yen:Int16, id:String, isParent:String, password:String)
    {
        self.name = name
        self.yen = yen
        self.id = id
        self.isParent = isParent
        self.password = password
    }
}

var UserList: [UserStruct] =
[

]

var money = 1000
var pass = "1111"
var payHistoryList = ["100"]
