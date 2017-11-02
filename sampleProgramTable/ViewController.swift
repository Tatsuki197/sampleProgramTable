//
//  ViewController.swift
//  sampleProgramTable
//
//  Created by Tatsuki Nakatsuka on 2017/10/30.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   

    @IBOutlet weak var programTable:UITableView!
    var proArray = ["C言語",
                    "Swift",
                    "PHP",
                    "Javascript",
                    "Ruby",
                    "Java",
                    "Python"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    
    //2.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return proArray
        
        //エラーがなかなか消えない時はcommand+shift+kで一旦エラーを削除
        return proArray.count
    }
        //    ３.リストに表示する文字列を決定し、表示
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            //文字列を表示するセルの取得（セルの再利用） indexPath→セルの中に入る
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            //表示したい文字の設定
            //  cell.textLabel?.text = "\(indexPath.row)行目"
            cell.textLabel?.text = proArray[indexPath.row]
            
            //文字を設定したセルを返す
            return cell
            
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    }


