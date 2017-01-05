//
//  TaskCell.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/30.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell
{
    

    
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var taskYen: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
