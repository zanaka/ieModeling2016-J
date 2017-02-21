//
//  TaskComp.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/01/12.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskComp: UIViewController {
    

    
    var receiveCellText : String = "タスク名"
    var receiveCellYen : Int = 0
    var receiveCellId : String = "id"
    
    @IBOutlet weak var Taskname: UILabel!
    @IBOutlet weak var Taskyen: UILabel!
    
    override func viewDidLoad() {
        
        DatabaseController.reloadTask()
        
        super.viewDidLoad()
        Taskyen.text = String(receiveCellYen)
        Taskname.text = receiveCellText
    }
    
    
    @IBAction func putcomp(_ sender: Any) {
        DatabaseController.clearTask(id: receiveCellId)
        DatabaseController.addLastMoney(chengeMoney :Int16(receiveCellYen))
        performSegue(withIdentifier: "tocomp2", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    
}
