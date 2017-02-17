//
//  PASS.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2017/02/13.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import UIKit



class PASS: UIViewController {
    
    @IBOutlet weak var tigau: UILabel!
    
    var inword : String = ""
    var inbang : String = ""
    var bang : Int = 0

    
    @IBAction func put1(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("1")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put2(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("2")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    
    @IBAction func put3(_ sender: Any) {        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("3")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put4(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("4")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put5(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("5")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    
    @IBAction func put6(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("6")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put7(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("7")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put8(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("8")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put9(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("9")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func put0(_ sender: Any) {
        inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        inword.append("0")
        inbang.append("●")
        tigau.text = String("")
        bang = bang + 1
        inpass.text = String(inbang)
        if ( bang >= 4 ){
            if ( inword == String(pass) ){
                performSegue(withIdentifier: "passok", sender: nil)
            } else {
                inword = ""
                inbang = ""
                bang = 0
                inpass.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                tigau.text = String("ちがうよ！")
            }
        }
    }
    @IBAction func putb(_ sender: Any) {
        
        inword = ""
        inbang = ""
        bang = 0
        inpass.text = String(inbang)
        
        
    }
    
    @IBOutlet weak var inpass: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inpass.text = String(inword)
        tigau.text = String("")
        
        
    }

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}
