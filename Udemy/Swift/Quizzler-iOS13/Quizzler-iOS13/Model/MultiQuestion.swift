//
//  MultiQuestion.swift
//  Quizzler-iOS13
//
//  Created by BCI MacBook Pro on 19-07-20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct MultiQuestion{
    let text: String
    let answer: [String]
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        correct = correctAnswer
    }
}

