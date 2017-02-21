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
        if payAmount.text != ""
        {

            DatabaseController.addLastMoney(chengeMoney: -Int64(payAmount.text!)!)
            DatabaseController.loadLastMoneyValue()
            moneyLabel.text = String(money)
            DatabaseController.addPayHistory(price: Int16(payAmount.text!)!)
            DatabaseController.reloadPayHistory()
            payHistoryTable.reloadData()

        }
        payAmount.text = ""
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (PayHistoryList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "payHistoryCell")
        cell.textLabel?.text = String(PayHistoryList[indexPath.row].price)
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            DatabaseController.addLastMoney(chengeMoney: Int64(PayHistoryList[indexPath.row].price))
            DatabaseController.loadLastMoneyValue()
            moneyLabel.text = String(money)
            DatabaseController.deletePayHistory(id: PayHistoryList[indexPath.row].id)
            DatabaseController.reloadPayHistory()
            payHistoryTable.reloadData()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        DatabaseController.loadLastMoneyValue()
        moneyLabel.text = String(money)
        payAmount.keyboardType = UIKeyboardType.numberPad
        DatabaseController.reloadPayHistory()
        payAmount.keyboardType = UIKeyboardType.numberPad
        payHistoryTable.reloadData()
    }
}
