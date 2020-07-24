//
//  ViewController.swift
//  Quizzler
//
//  Created by Diana Agapkina on 7/22/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() { 
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!  //True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight  {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAnswers()
        choice1Button.setTitle(answerChoices[0], for: .normal)
        choice2Button.setTitle(answerChoices[1], for: .normal)
        choice3Button.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
    }
    
}

