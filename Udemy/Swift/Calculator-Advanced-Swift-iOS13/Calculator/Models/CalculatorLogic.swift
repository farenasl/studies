//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by BCI MacBook Pro on 08-11-20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    var number: Double

    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
            switch symbol {
                case "+/-":
                    return number * -1
                case "AC":
                    return 0
                case "%":
                    return number / 100
                default:
                    return number
            }
        }
}
