//
//  ViewController.swift
//  How Many Finger
//
//  Created by masterUNG on 5/3/2560 BE.
//  Copyright © 2560 EWTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var intTextField = 0
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var shewTextLabel: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        
        let strTextField = numberTextField.text
        
        intTextField = Int(strTextField!)!
        print("intTextField ==> \(intTextField)")
        
        let intRandom = Int(arc4random_uniform(6))
        print("intRandom ==> \(intRandom)")
        
        if intTextField == intRandom {
            shewTextLabel.text = "You Win"
        }   else    {
            shewTextLabel.text = "My Random ==> " + String(intRandom)
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   // videDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didReceive


}   // Main Class

