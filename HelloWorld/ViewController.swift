//
//  ViewController.swift
//  HelloWorld
//
//  Created by John Doe on 14/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 15
    }

    @IBAction func greetingButtinTpped() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle(greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting", for: .normal)
        
        
/*      этот код оптимизирован выше с тернарным оператором
        if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        }   else {
            greetingButton.setTitle("Hide Greeting", for: .normal)
        } */
        
    }
    
}

