//
//  LoginViewController.swift
//  Flash iOS Chat
//
//  Created by Diana Agapkina on 9/7/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
              if let e = error {
                  print(e.localizedDescription)
              } else {
                  // Navigate to the ChatViewController
                self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
              }
            }
        }
    }
    
}
