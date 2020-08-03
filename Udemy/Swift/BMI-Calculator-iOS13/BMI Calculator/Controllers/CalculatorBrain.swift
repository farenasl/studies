//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by BCI MacBook Pro on 02-08-20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue: String!
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = String(NSString(format: "%.1f", weight/(height*height)))
    }
    
    func getBMIValue() -> String! {
        return bmiValue
    }
}
