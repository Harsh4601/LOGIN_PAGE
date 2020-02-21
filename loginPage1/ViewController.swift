//
//  ViewController.swift
//  loginPage1
//
//  Created by Harsh Londhekar on 15/02/20.
//  Copyright © 2020 Harsh Londhekar. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if emailTextField.text != ""
        {
            
        if passwordTextField.text != ""
        {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error == nil
                {
                    self.performSegue(withIdentifier: "signupToWelcome", sender: self)
                }
                else{
                    print("Error")
                }
            }
        }
        }
        
    }
    
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
    }
    
}

