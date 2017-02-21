//
//  MoneyView.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2016/12/29.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit

class MoneyView:UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var payAmount: UITextField!
    @IBOutlet weak var payHistoryTable: UITableView!
    
    @IBAction func pay(_ sender: Any) {
        if payAmount != nil
        {
            if Int(payAmount.text!)! <= money
            {
                money -= Int(payAmount.text!)!
                moneyLabel.text = String(money)
                payHistoryList.append(payAmount.text!)
                payHistoryTable.reloadData()
            }
        }
        payAmount.text = ""
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (payHistoryList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "payHistoryCell")
        cell.textLabel?.text = payHistoryList[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            money += Int(payHistoryList[indexPath.row])!
            moneyLabel.text = String(money)
            payHistoryList.remove(at: indexPath.row)
            payHistoryTable.reloadData()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        DatabaseController.loadLastMoneyValue()
        moneyLabel.text = String(money)
        payAmount.keyboardType = UIKeyboardType.numberPad
    }
}
