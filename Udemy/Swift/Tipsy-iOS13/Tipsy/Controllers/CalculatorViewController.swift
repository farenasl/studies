//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.1
    var stepper = 2
    var amount = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        setAllUnselected()
        sender.isSelected = true
        tip = Double(sender.currentTitle!.dropLast())!/100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(String(format:"%.1f%",tip))
        print(splitNumberLabel.text!)
        print(billTextField.text!)
        amount = Double(billTextField.text!) ?? 0
        amount *= (1+tip)
        amount /= Double(splitNumberLabel.text!) ?? 1
        print(String(format:"%.2f%",amount))
    }
    
    func setAllUnselected() {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
}

