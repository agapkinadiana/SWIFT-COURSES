//
//  Question.swift
//  Quizzler
//
//  Created by Diana Agapkina on 7/24/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String

    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
