//
//  SecondViewController.swift
//  toDo
//
//  Created by Risa KAKAZU on 2016/12/18.
//  Copyright © 2016年 Risa KAKAZU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItme(_ sender: Any) {
        
        if(input.text != ""){
            list.append(input.text!)
            input.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

