//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [["Four + Two is equal to Six?", "True"]
        , ["Five - Three is greater than One?", "True"]
        , ["Three + Eight is less than Ten?", "True"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        updateQuestion()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.currentTitle == quiz[questionNumber][1]{
            print("Right!")
        }
        else {
            print("Wrong!")
        }
        if questionNumber < quiz[0].count - 1  {
            questionNumber += 1
            updateQuestion()
        }
    }
    
    func updateQuestion() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

