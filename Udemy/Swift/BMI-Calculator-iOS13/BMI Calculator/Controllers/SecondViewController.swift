//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by BCI MacBook Pro on 02-08-20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        
        let label = UILabel()
        label.text = "Holanda"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
