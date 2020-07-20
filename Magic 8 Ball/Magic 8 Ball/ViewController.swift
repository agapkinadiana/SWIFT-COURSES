//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Diana Agapkina on 7/20/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray = [ #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = ballArray.randomElement()
    }
}

