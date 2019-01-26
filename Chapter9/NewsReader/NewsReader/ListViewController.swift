//
//  ListViewController.swift
//  NewsReader
//
//  Created by Z on 2019/01/27.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    //各セクションにセルが何個あるかを指定する。
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セル個数の指定
        return 3
    }
    
    //セルの内容を指定する。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath = セクション位置, セル(Row)の位置
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //セルの内容
        return cell
    }
}
