//
//  SignUpViewController.swift
//  Travel Ticket
//
//  Created by comart on 2/10/2561 BE.
//  Copyright © 2561 student. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var Email_Signup: UITextField!
    @IBOutlet weak var Name_Signup: UITextField!
    @IBOutlet weak var SurName_Signup: UITextField!
    @IBOutlet weak var Password_Signup: UITextField!
    @IBOutlet weak var ConfirmPassword_Signup: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SignupBtn(_ sender: Any) {
        if Password_Signup.text != ConfirmPassword_Signup.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        else if Name_Signup.text == nil || SurName_Signup.text == nil {
            let alertController = UIAlertController(title: "Name is Blank", message: "Please type your Name", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        else{
            Auth.auth().createUser(withEmail: Email_Signup.text!, password: Password_Signup.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}

