//
//  ListViewController.swift
//  NewsReader
//
//  Created by Z on 2019/01/27.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController, XMLParserDelegate {
    //XMLparserインスタンス格納用
    var parser:XMLParser!
    //記事格納用配列
    var items = [Item]()
    var item:Item?
    //現在処理中の文字列一時格納用
    var currentString = ""
    
    //各セクションにセルが何個あるかを指定する。
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セル個数の指定
        return items.count
    }
    
    //セルの内容を指定する。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath = セクション位置, セル(Row)の位置
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row].title
        //セルの内容
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startDownload()
    }
    
    //RSS取得メソッド
    func startDownload() {
        //記事格納用配列の初期化
        self.items = []
        //指定ファイルの取得
        if let url = URL(string: "https://www.apple.com/ja/newsroom/rss-feed.rss") {
            //XMLParserインスタンス生成
            //キーワード:OptionalBinding P332参照
            if let parser = XMLParser(contentsOf: url) {
                self.parser = parser
                self.parser.delegate = self
                //取得したRSSの解析
                self.parser.parse()
            }
        }
    }
    
    //指定要素の検索（探索？）
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        //一時変数の初期化
        self.currentString = ""
        //要素名の比較
        if elementName == "item" {
            //目的の要素（データ）のみ取得
            self.item = Item()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        //記事の内容を格納
        self.currentString += string
    }
    
    //要素の終了タグが見つかると自動的に呼ばれる
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName {
        case "title":
            self.item?.title = currentString
        case "link":
            self.item?.link = currentString
        case "item":
            self.items.append(self.item!)
        default:
            break
        }
    }
    
    //データ取得後、tableViewメソッドの再実行
    func parserDidEndDocument(_ parser: XMLParser) {
        self.tableView.reloadData()
    }
}
