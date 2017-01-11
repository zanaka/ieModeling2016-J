//
//  TaskEdit.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/28.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class ParentTaskView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var taskTableView: UITableView!
    
    var currentCellText : String = ""
    var currentCellYen: Int = 0
    
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            taskList.remove(at: indexPath.row)
            taskTableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        currentCellText = taskList[indexPath.row].name
        currentCellYen = taskList[indexPath.row].yen
        performSegue(withIdentifier: "toTaskEdit", sender: nil)
        taskTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTaskEdit"
        {
            let taskEdit:TaskEdit = segue.destination as! TaskEdit
            taskEdit.receiveCellText = currentCellText
            taskEdit.receiveCellYen = currentCellYen
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
