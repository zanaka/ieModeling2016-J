//
//  AddTaskWithImput.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/01/23.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class AddTaskWithInput: UIViewController{
    
    
    @IBOutlet weak var addTaskName: UITextField!
    @IBOutlet weak var addTaskPrice: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        var inputName = ""
        var inputPrice :Int16 = 0
        if addTaskName.text != "" && addTaskPrice.text != ""
        {
            DatabaseController.addTask(name: addTaskName.text!, price: Int(addTaskPrice.text!)!, iscomp: "false")
            DatabaseController.saveContext()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
