//
//  SignInViewController.swift
//  codepath-carousel
//
//  Created by Patrick on 5/13/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInTextFieldView: UIView!
    @IBOutlet weak var signInButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func didEndEditingEmail(sender: AnyObject) {
        if emailTextField.text.isEmpty {
            emailTextField.text = "Email"
        }
    }
    @IBAction func didBeginEditingEmail(sender: AnyObject) {
        if emailTextField.text == "Email" {
            emailTextField.text = nil
            
            UIView.animateWithDuration(0.2, animations: {
                self.signInTextFieldView.center.y -= 90
            })
        }
    }
    @IBAction func didBeginEditingPassword(sender: AnyObject) {
        if passwordTextField.text == "Password" {
            passwordTextField.text = nil
        }
    }
    
    @IBAction func didEndEditingPassword(sender: AnyObject) {
        if passwordTextField.text.isEmpty {
            passwordTextField.text = "Password"
        }
    }
}
