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
    
    @IBAction func addItem1(_ sender: Any) {
        list.append("さらあらい")
        price.append("400")
    }
    @IBAction func addItme2(_ sender: Any) {
        list.append("せんたくたたみ")
        price.append("200")
    }
     @IBAction func addItem4(_ sender: Any) {
        list.append("肩もみ")
        price.append("300")
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

