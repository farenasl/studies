//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func HeightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(NSString(format: "%.1f", sender.value)) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(NSString(format: "%.0f", sender.value)) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(weightSlider.value/(heightSlider.value*heightSlider.value))
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(NSString(format: "%.1f", weightSlider.value/(heightSlider.value*heightSlider.value)))
//        self.present(secondVC, animated: true, completion: nil)
        
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = String(NSString(format: "%.1f", weightSlider.value/(heightSlider.value*heightSlider.value)))
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getBMILabel()
            destinationVC.color = calculatorBrain.getBMIColor()
        }
    }
}

