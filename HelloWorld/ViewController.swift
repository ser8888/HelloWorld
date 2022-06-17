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
//        greetingButton.layer.cornerRadius = 15
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtinTpped() {
        greetingLabel.isHidden.toggle()
// финальна] оптимизация для сохрвния размера шрифта
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
//        greetingButton.setTitle(greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting", for: .normal)
    
        
/*      этот код оптимизирован выше с тернарным оператором
        if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        }   else {
            greetingButton.setTitle("Hide Greeting", for: .normal)
        } */
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

