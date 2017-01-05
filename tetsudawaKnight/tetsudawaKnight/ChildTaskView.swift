//
//  ChildTaskView.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2016/12/28.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

//
//  Task.swift
//  tetsudawaKnight
//
//  Created by YUUYA PC on 2016/12/22.
//  Copyright © 2016年 Kaito Ishizuka. All rights reserved.
//

import UIKit


class ChildTaskView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // ステータスバーの高さ
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    
    override func viewDidLoad() {
        
        // 合計金額の表示
        super.viewDidLoad()
        MoneyLabel.text = String(money)
        
        
        super.viewDidLoad()
        
        // UITableView を作成
        let tableView = UITableView()
        
        // サイズと位置調整
        /*
        tableView.frame = CGRect(
            x: 0,
            y: statusBarHeight,
            width: self.view.frame.width,
            height: self.view.frame.height - statusBarHeight
        )
        */
        
        // Delegate設定
        tableView.delegate = self
        
        // DataSource設定
        tableView.dataSource = self
        
        // 画面に UITableView を追加
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを作る
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.accessoryType = .detailButton
           cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = price[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // セルの数を設定
        return list.count
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルがタップされた時の処理
        print("タップされたセルのindex番号: \(indexPath.row)")
    }
    
    /*
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // セルの高さを設定
        return 64
    }
    */
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        // アクセサリボタン（セルの右にあるボタン）がタップされた時の処理
        print("タップされたアクセサリがあるセルのindex番号: \(indexPath.row)")
    }
    
    @IBOutlet weak var MoneyLabel: UILabel!

    
}
