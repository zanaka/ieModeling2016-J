//
//  TaskComp.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/30.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskEdit: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var receiveTaskId :String = ""
    var receiveCellText :String = ""
    var receiveCellYen: Int16 = 0
    
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var taskSetTable: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (1)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = taskSetTable.dequeueReusableCell(withIdentifier: "taskSettingCell") as! TaskSetCell
        //        let cell = TaskCell(style: UITableViewCellStyle.default, reuseIdentifier: "taskcell")
        cell.taskSetName.text = taskList[indexPath.row].name
        cell.setAmount.placeholder = String(receiveCellYen)
        return(cell)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        taskSetTable.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskName.text = receiveCellText
    }
}
