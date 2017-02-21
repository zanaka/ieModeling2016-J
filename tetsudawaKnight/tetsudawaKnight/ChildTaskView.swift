//
//  TaskClear.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/28.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit
import CoreData

class ChildTaskView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 合計金額の表示

    @IBOutlet weak var MoneyLabel: UILabel!
    @IBOutlet weak var taskTableView: UITableView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        DatabaseController.reloadTask()
        DatabaseController.loadLastMoneyValue()
        MoneyLabel.text = String(money)
    }
    
    
    
    var currentCellText : String = ""
    var currentCellYen: Int = 0
    var currentCellId : String = "id"
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (taskList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "taskcell") as! TaskCell
        //        let cell = TaskCell(style: UITableViewCellStyle.default, reuseIdentifier: "taskcell")
        cell.taskName.text = taskList[indexPath.row].name
        cell.taskYen.text = String(taskList[indexPath.row].yen)
        return(cell)
    }
    

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        currentCellText = taskList[indexPath.row].name
        currentCellYen = Int(taskList[indexPath.row].yen)
        currentCellId = taskList[indexPath.row].id
        performSegue(withIdentifier: "ToTaskClear", sender: nil)
        taskTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToTaskClear"
        {
            let tc:TaskComp = segue.destination as! TaskComp
            tc.receiveCellText = currentCellText
            tc.receiveCellYen = currentCellYen
            tc.receiveCellId = currentCellId
        }
    }
    

    @IBAction func putsend(_ sender: Any) {
        DatabaseController.loadPass()
        if ( pass == "0" ){
            performSegue(withIdentifier: "tonopass", sender: nil)
        }else{
            performSegue(withIdentifier: "topass", sender: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
