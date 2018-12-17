//
//  SignInViewController.swift
//  Snapchat
//
//  Created by Ely Barros on 11/12/18.
//  Copyright © 2018 Ely. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func turnUpTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("We tried to sign in")
            if error != nil {
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("We tried to create an user")
                    
                    if error != nil {
                        print("Hey! We have an error: \(error)")
                    } else {
                        print("User created successfully")
                        self.performSegue(withIdentifier: "signinsegue", sender: nil)
                    }
                })
            } else {
                print("Signed in successfully")
                self.performSegue(withIdentifier: "signinsegue", sender: nil)
            }
        }
        
    }
    
}

