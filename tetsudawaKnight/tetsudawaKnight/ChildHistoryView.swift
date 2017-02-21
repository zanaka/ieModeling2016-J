//
//  ChildHistoryView.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit
import CoreData

class ChildHistoryView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 合計金額の表示
        
    

    
    @IBOutlet weak var taskTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DatabaseController.HisReloadTask()
        
        
        
    }
    
    

    @IBAction func putsend(_ sender: Any) {
        DatabaseController.loadPass()
        if ( pass == "0" ){
            performSegue(withIdentifier: "tonopass", sender: nil)
        }else{
            performSegue(withIdentifier: "topass", sender: nil)
        }
    }
    
    var currentCellText : String = ""
    var currentCellYen: Int = 0
    var currentCellId : String = "id"
    
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
    

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        currentCellText = HisTaskList[indexPath.row].name
        currentCellYen = Int(HisTaskList[indexPath.row].yen)
        currentCellId = HisTaskList[indexPath.row].id
        performSegue(withIdentifier: "ToTaskUnClear", sender: nil)
        taskTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToTaskUnClear"
        {
            let tu:TaskUncomp = segue.destination as! TaskUncomp
            tu.receiveCellText = currentCellText
            tu.receiveCellYen = currentCellYen
            tu.receiveCellId = currentCellId
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
