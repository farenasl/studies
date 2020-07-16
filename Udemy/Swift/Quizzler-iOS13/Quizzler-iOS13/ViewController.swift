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
    
    let quiz = [
        Question(text: "Four + Two is equal to Six?", answer: "True")
        , Question(text: "Five - Three is greater than One?", answer: "True")
        , Question(text: "Three + Eight is less than Ten?", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        updateQuestion()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.currentTitle == quiz[questionNumber].answer {
            print("Right!")
        }
        else {
            print("Wrong!")
        }
        if questionNumber < quiz.count - 1  {
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
        
        updateQuestion()
    }
    
    func updateQuestion() {
        questionLabel.text = quiz[questionNumber].text
    }
}

