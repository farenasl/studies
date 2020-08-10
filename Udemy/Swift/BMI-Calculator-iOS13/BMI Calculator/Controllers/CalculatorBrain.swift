//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by BCI MacBook Pro on 02-08-20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? "0.0")
    }
    
    func getBMILabel() -> String {
        return bmiValue?.advice ?? "none"
    }
    
    func getBMIColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiVal = weight/(height*height)
        bmiValue = BMI(value: bmiVal, advice: (bmiVal < 18.5 ? "Underweight" : (bmiVal > 24.9 ? "Overweight" : "Normal")), color: (bmiVal < 18.5 ? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) : (bmiVal > 24.9 ? #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) : #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))))
    }
}
