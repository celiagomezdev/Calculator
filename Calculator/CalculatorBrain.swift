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
    
    private var operations: Dictionary<String, Double> = ["π": Double.pi,"e": M_E, ]
    
    mutating func performOperation(_ symbol: String) {
        if let constant = operations[symbol] {
            accumulator = constant

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
