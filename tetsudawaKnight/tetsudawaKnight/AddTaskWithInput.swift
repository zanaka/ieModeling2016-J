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
        
        DatabaseController.addTask(name: addTaskName.text!, price: Int(addTaskPrice.text!)!)
        DatabaseController.saveContext()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
