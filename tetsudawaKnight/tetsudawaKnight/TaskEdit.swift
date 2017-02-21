//
//  TaskComp.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/30.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskEdit: UIViewController
{
    var receiveTaskId :String = ""
    var taskIsComp :String = "false"
    var task: TaskStruct = TaskStruct.init(name: "task", yen: 100, id: "aaa", iscomp: "false")
    
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var nameSetLabel: UITextField!
    @IBOutlet weak var clearPriceSetLabel: UITextField!
    
    @IBOutlet weak var taskIsCompControll: UISegmentedControl!
    @IBAction func taskIsComp(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            taskIsComp = "true"
            break
            
        case 1:
            taskIsComp = "false"
            break
            
        default:
            /* do nothing */
            break
        }
        
    }

    @IBAction func CommitChenges(_ sender: Any) {
        var inputName = ""
        var inputPrice :Int16 = 0
        if nameSetLabel.text == ""
        {
            inputName = task.name
        }else{
            inputName = nameSetLabel.text!
        }
        if clearPriceSetLabel.text == ""
        {
            inputPrice = Int16(task.yen)
        }else{
            inputPrice = Int16(clearPriceSetLabel.text!)!
        }
        DatabaseController.editTask(searchId: task.id, chengeName: inputName, chengePrice: inputPrice, chengeIsComp: taskIsComp)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        task = DatabaseController.getTask(id: receiveTaskId)
        taskName.text = task.name
        taskIsComp = task.isComp
        if taskIsComp == "true" {
            taskIsCompControll.selectedSegmentIndex = 0
        }else{
            taskIsCompControll.selectedSegmentIndex = 1
        }
        clearPriceSetLabel.keyboardType = UIKeyboardType.numberPad
        nameSetLabel.text = task.name
        clearPriceSetLabel.text = String(task.yen)
        
    }
}
