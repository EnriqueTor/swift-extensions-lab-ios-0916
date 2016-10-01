//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullName = "Enrique Torrendell"
        let phoneNumber = 8675309
        print(fullName)
        print(fullName.pigLatin)
        print(fullName.points)
        print(fullName.whisper())
        print(fullName.shout())
        print(phoneNumber)
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 2))
        let unicornPhrase = "My 🦄 is awesome"
        unicornLevelLabel.text = unicornPhrase
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


