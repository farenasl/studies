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
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        updateQuestion()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if quizBrain.checkAnswer(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.questionNumber < quizBrain.quiz.count - 1  {
            quizBrain.questionNumber += 1
        }
        else {
            quizBrain.questionNumber = 0
        }
        
        updateQuestion()
    }
    
    func updateQuestion() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.questionLabel.text = self.quizBrain.getQuestion()
            self.progressBar.progress = self.quizBrain.getProgress()
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        }
    }
}

