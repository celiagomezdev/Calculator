//
//  ViewController.swift
//  Calculator
//
//  Created by Celia Gómez de Villavedón on 01/10/2017.
//  Copyright © 2017 Celia Gómez de Villavedón Pedrosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
            print("User is in the middle of typing. Digit \(digit) pressed")
        } else {
            display!.text = digit
            print("User is not in the middle of typing. Digit \(digit) pressed")
            userIsInTheMiddleOfTyping = true
        }
    }
}

