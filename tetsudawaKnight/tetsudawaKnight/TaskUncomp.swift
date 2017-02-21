//
//  TaskUncomp.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskUncomp: UIViewController {
    
    
    
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
    

    @IBAction func putuncomp(_ sender: Any) {
        DatabaseController.UnclearTask(id: receiveCellId)
        DatabaseController.addLastMoney(chengeMoney :Int64(-receiveCellYen))
        performSegue(withIdentifier: "touncomp2", sender: nil)
        
        self.tabBarController?.selectedIndex = 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    
}
