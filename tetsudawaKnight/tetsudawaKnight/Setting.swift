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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inpass.text = String(inword)
        
    }

        @IBAction func put0(_ sender: Any) {
        inword.append("0")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put1(_ sender: Any) {
        inword.append("1")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
                DatabaseController.editPass(editPass: inword)
                performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    
    @IBAction func put2(_ sender: Any) {
        inword.append("2")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put3(_ sender: Any) {
        inword.append("3")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put4(_ sender: Any) {
        inword.append("4")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put5(_ sender: Any) {
        inword.append("5")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put6(_ sender: Any) {
        inword.append("6")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put7(_ sender: Any) {
        inword.append("7")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put8(_ sender: Any) {
        inword.append("8")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func put9(_ sender: Any) {
        inword.append("9")
        inpass.text = String(inword)
        bang = bang + 1
        if ( bang >= 4 ){
            DatabaseController.editPass(editPass: inword)
            performSegue(withIdentifier: "owari", sender: nil)
        }
    }
    @IBAction func putbatu(_ sender: Any) {
        performSegue(withIdentifier: "owari", sender: nil)
    }
    @IBAction func putb(_ sender: Any) {
        inword = ""
        bang = 0
        inpass.text = String(inword)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}
