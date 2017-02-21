//
//  PassLeset.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/21.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class PassReset: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func Reset(_ sender: Any) {
    DatabaseController.editPass(editPass: "0")
    performSegue(withIdentifier: "tooya", sender: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}
