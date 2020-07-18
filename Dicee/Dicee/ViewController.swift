//
//  ViewController.swift
//  Dicee
//
//  Created by Diana Agapkina on 7/17/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IDOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray [Int.random(in: 1...5)]
        
//        leftDiceNumber += 1
//        rightDiceNumber -= 1
    }
    
}

