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
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
            print("User is in the middle of typing. Digit \(digit) pressed")
        } else {
            display.text = digit
            print("User is not in the middle of typing. Digit \(digit) pressed")
            userIsInTheMiddleOfTyping = true
        }
    }
    
    //Computed variable that gets the user input as a Double and sets it as a String (Label)
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            //If the result has trailling zeros, remove them.
            display.text = newValue.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", newValue) : String(newValue)
        }
    }

    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            displayValue = result
        }
    } 
}


