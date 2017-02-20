//
//  ParentHistView.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/02/17.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

//
//  ChildHistoryView.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit
import CoreData

class ParentHistView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 合計金額の表示
    
    
    @IBOutlet weak var taskTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DatabaseController.HisReloadTask()
    }
    
    
    
    var currentTaskId : String = ""
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (HisTaskList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "histtaskcell") as! TaskCell
        //        let cell = TaskCell(style: UITableViewCellStyle.default, reuseIdentifier: "taskcell")
        cell.taskName.text = HisTaskList[indexPath.row].name
        cell.taskYen.text = String(HisTaskList[indexPath.row].yen)
        return(cell)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            DatabaseController.deleteTask(id: taskList[indexPath.row].id)
            DatabaseController.reloadTask()
            taskTableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        currentTaskId = taskList[indexPath.row].id
        performSegue(withIdentifier: "toTaskEdit", sender: nil)
        taskTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTaskEdit2"
        {
            let taskEdit:TaskEdit = segue.destination as! TaskEdit
            taskEdit.receiveTaskId = currentTaskId
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

