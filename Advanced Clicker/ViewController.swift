//
//  ViewController.swift
//  Advanced Clicker
//
//  Created by Soon Yin Jie on 3/8/19.
//  Copyright © 2019 Tinkercademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.isHidden = true
        view.backgroundColor = .red
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_) in
            self.time += 0.1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.0, animations: {
            self.countdownLabel.transform = self.countdownLabel.transform.scaledBy(x: 0.1, y: 0.1)
            self.countdownLabel.alpha = 0
            self.view.backgroundColor = .orange
        }) { (_) in
            // not animated!!
            self.countdownLabel.text = "2"
            self.countdownLabel.transform = CGAffineTransform.identity
            self.countdownLabel.alpha = 1
            
            // next animation
            UIView.animate(withDuration: 1.0, animations: {
                self.countdownLabel.transform = self.countdownLabel.transform.scaledBy(x: 0.1, y: 0.1)
                self.countdownLabel.alpha = 0
                self.view.backgroundColor = .yellow

            }) { (_) in
                // not animated!!
                self.countdownLabel.text = "1"
                self.countdownLabel.transform = CGAffineTransform.identity
                self.countdownLabel.alpha = 1
                
                // next animation
                UIView.animate(withDuration: 1.0, animations: {
                    self.countdownLabel.transform = self.countdownLabel.transform.scaledBy(x: 0.1, y: 0.1)
                    self.countdownLabel.alpha = 0
                    self.view.backgroundColor = .green
                    
                }) { (_) in
                    // not animated!!
                    self.countdownLabel.text = "GO"
                    self.countdownLabel.transform = CGAffineTransform.identity
                    self.countdownLabel.alpha = 1
                    
                    // next animation
                    UIView.animate(withDuration: 1.0, animations: {
                        self.countdownLabel.transform = self.countdownLabel.transform.scaledBy(x: 2.0, y: 2.0)
                        self.countdownLabel.alpha = 0
                        self.view.backgroundColor = .white
                        
                    }) { (_) in
                        // not animated!!
                        
                    }

                    
                }


            }
        }
    }
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        if counter == 30 {
            print("Done")
            print("Time taken: \(time)")
            performSegue(withIdentifier: "unwindToScores", sender: self)
        }
    }
    
}

