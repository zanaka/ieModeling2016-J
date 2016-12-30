//
//  TaskComp.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/30.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskComp :UIViewController
{
    var receiveCellText :String = ""
    @IBOutlet weak var taskName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskName.text = receiveCellText
        
    }
}
