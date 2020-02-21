//
//  signViewController.swift
//  loginPage1
//
//  Created by Harsh Londhekar on 16/02/20.
//  Copyright © 2020 Harsh Londhekar. All rights reserved.
//

import UIKit
import FirebaseAuth

class signViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailidTextField: UITextField!
    
    @IBOutlet weak var password1TextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func signinButtonPressed(_ sender: UIButton) {
        
        if firstNameTextField.text != ""{
        
        
        if lastNameTextField.text != ""{
        
        
        if emailidTextField.text != ""{
        
        
        if password1TextField.text != ""{
        
        
        if confirmPasswordTextField.text != ""{
            Auth.auth().createUser(withEmail: emailidTextField.text!, password: password1TextField.text!) { (user,error) in
                if error == nil{
                    self.performSegue(withIdentifier: "signinTologin", sender: self)
                }
                else{
                    print("Error")
                }
            }
        }
    }
}
}
}
                              
                    
                    
                           
    }
                
                
    
    
}

