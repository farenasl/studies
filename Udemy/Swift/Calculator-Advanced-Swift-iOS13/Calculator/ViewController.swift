//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber: Bool = true
    

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        
        guard let number = Float(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Float")
        }
        
        if let calcMethod = sender.currentTitle {
            switch calcMethod {
                case "+/-":
                    displayLabel.text = String(number * -1)
                case "AC":
                    displayLabel.text = String(0)
                case "%":
                    displayLabel.text = String(number / 100)
                default:
                    displayLabel.text = displayLabel.text
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    guard let currentDisplayValue = Float(displayLabel.text!) else {
                        fatalError("Cannot convert display label text to a Float!")
                    }
                    let isInt = floorf(currentDisplayValue) == currentDisplayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text! += numValue
            }
        }
    }

}

