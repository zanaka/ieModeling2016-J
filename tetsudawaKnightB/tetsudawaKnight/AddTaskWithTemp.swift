//
//  AddTaskWithTemp.swift
//

import UIKit

class AddTaskWithTemp: UIViewController, UICollectionViewDataSource{
    
    
    @IBOutlet weak var tempCollection: UICollectionView!


    
    // 表示するセルの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    //データを返すメソッド
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        //コレクションビューから識別子「taskTempCell」のセルを取得する。
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "taskTempCell", for: indexPath as IndexPath) as UICollectionViewCell
        
        //セルの背景色をランダムに設定する。
        cell.backgroundColor = UIColor(red: CGFloat(drand48()),
                                       green: CGFloat(drand48()),
                                       blue: CGFloat(drand48()),
                                       alpha: 1.0)
        return cell
    }
    
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
 
