//
//  LoginViewController.swift
//  Travel Ticket
//
//  Created by comart on 1/10/2561 BE.
//  Copyright © 2561 student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    
    var activityView:UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self
        passwordField.delegate = self
        
        emailField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    
}
