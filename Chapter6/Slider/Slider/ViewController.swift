//
//  ViewController.swift
//  Slider
//
//  Created by Z on 2019/01/25.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func showValue(_ sender: UISlider) {
        label.text = "\(sender.value)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

