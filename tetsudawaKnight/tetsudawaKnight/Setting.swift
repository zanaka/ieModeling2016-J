//
//  Setting.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/17.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//


import UIKit

class Setting:UIViewController {
    
    
    var inword : String = ""
    var bang : Int = 0
    
    
    @IBOutlet weak var inpass: UILabel!
    
    @IBAction func put1(_ sender: Any) {
        inword.append("1")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
                performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    
    @IBAction func put2(_ sender: Any) {
    }
    @IBAction func put3(_ sender: Any) {
    }
    @IBAction func put4(_ sender: Any) {
    }
    @IBAction func put5(_ sender: Any) {
    }
    @IBAction func put6(_ sender: Any) {
    }
    @IBAction func put7(_ sender: Any) {
    }
    @IBAction func put8(_ sender: Any) {
    }
    @IBAction func put9(_ sender: Any) {
    }
    @IBAction func putb(_ sender: Any) {
        inword = ""
        bang = 0
        inpass.text = String(inword)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
            inpass.text = String("")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}
