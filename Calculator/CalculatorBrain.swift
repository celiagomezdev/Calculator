//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Celia Gómez de Villavedón on 03/10/2017.
//  Copyright © 2017 Celia Gómez de Villavedón Pedrosa. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    func performOperation(_ symbol: String) {
        switch mathematicalSymbol {
        case "π":
            displayValue = Double.pi
        case "√":
            displayValue = sqrt(displayValue)
        default:
            break
        }

    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
        
    }
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
}
