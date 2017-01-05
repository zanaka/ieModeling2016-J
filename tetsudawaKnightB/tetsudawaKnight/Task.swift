//
//  Task.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2016/12/22.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class Task: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var taskTableView: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (tasklist.count)
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "taskcell")
        cell.textLabel?.text = tasklist[indexPath.row]
        
        return(cell)
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
     {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            tasklist.remove(at: indexPath.row)
            taskTableView.reloadData()
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
