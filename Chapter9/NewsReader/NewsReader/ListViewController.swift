//
//  ListViewController.swift
//  NewsReader
//
//  Created by Z on 2019/01/27.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
}
