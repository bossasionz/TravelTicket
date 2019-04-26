//
//  ViewController.swift
//  Travel Ticket
//
//  Created by student on 9/10/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Email.delegate = self
        Password.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
    return false
    }
    
    @IBAction func Signin_Btn(_ sender: Any) {
        
        if self.Email.text == "" && self.Password.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Please enter an email and password.", message: nil, preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else if Email.text == ""{
            
                let alertController = UIAlertController(title: "Enter your Email", message: nil, preferredStyle: .alert)
            
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
        } else if Password.text == "" {
            
                 let alertController = UIAlertController(title: "Enter your Password", message: nil, preferredStyle: .alert)
            
                 let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                 alertController.addAction(defaultAction)
            
                 self.present(alertController, animated: true, completion: nil)
            
        } else if self.Email.text != "" && self.Password.text != "" {
            Auth.auth().signIn(withEmail: self.Email.text!, password: self.Password.text!) { (user, error) in
                if error == nil {
                    
                    // Print into the console if successfully logged in
                    print("You have successfully logged in")
                    
                    //Go to the HomeViewController if the login is sucessful
                    self.performSegue(withIdentifier: "loginToHome", sender: self)
                    
                    
                }
            }
        }
            
          else {
                
                //Tells the user that there is an error and then gets firebase to tell them the error
                let alertController = UIAlertController(title: "Your email or password is not found", message: nil, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
}

        

        
//        Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (user, error) in
//            if error == nil{
//
//                self.performSegue(withIdentifier: "loginToHome", sender: self)
//            }
//            else{
//                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//
//                alertController.addAction(defaultAction)
//                self.present(alertController, animated: true, completion: nil)
//            }
//        }


}
