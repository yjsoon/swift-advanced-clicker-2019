//
//  ViewController.swift
//  Advanced Clicker
//
//  Created by Soon Yin Jie on 3/8/19.
//  Copyright © 2019 Tinkercademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = "\(counter)"
        if counter == 30 {
            print("Done")
        }
    }
    
}

