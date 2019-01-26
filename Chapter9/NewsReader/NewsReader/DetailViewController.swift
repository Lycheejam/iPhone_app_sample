//
//  DetailViewController.swift
//  NewsReader
//
//  Created by Z on 2019/01/27.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //URLインスタンス生成
        if let url = URL(string: self.link) {
            //requestインスタンス生成
            let request = URLRequest(url: url)
            //loadメソッドの実行
            //URLで指定したlinkのページ情報を取得してる。であってるかな？
            self.webView.load(request)
        }
    }
}
