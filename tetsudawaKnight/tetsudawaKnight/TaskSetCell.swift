//
//  TaskSetCell.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/31.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit
class TaskSetCell: UITableViewCell
{
   
    @IBOutlet weak var taskSetName: UILabel!
    @IBOutlet weak var setAmount: UITextField!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
