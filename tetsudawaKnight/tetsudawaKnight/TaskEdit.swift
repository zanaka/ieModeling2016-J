//
//  TaskEdit.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/28.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskEdit: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var taskTableView: UITableView!
    var currentCellText : String = ""
    
     public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (taskList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "taskcell")
        cell.textLabel?.text = taskList[indexPath.row].name
        
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
        performSegue(withIdentifier: "toTaskComp", sender: nil)
        taskTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTaskComp"
        {

            let taskComp:TaskComp = segue.destination as! TaskComp
            taskComp.receiveCellText = currentCellText
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
