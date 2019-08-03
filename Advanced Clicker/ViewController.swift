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
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc func update() {
        time += 0.1
    }

    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = "\(counter)"
        if counter == 30 {
            print("Done")
            print("Time taken: \(time)")
        }
    }
    
}

