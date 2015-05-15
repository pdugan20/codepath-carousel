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
    
    var initialSignInFormCenter: CGPoint!
    var initialSignInButtonCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialSignInFormCenter = signInTextFieldView.center
        initialSignInButtonCenter = signInButtonView.center
        
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
        self.animateUpSignInForm()
        if emailTextField.text == "Email" {
            emailTextField.text = nil
        }
    }
    @IBAction func didBeginEditingPassword(sender: AnyObject) {
        self.animateUpSignInForm()
        if passwordTextField.text == "Password" {
            passwordTextField.text = nil
        }
    }
    
    @IBAction func didEndEditingPassword(sender: AnyObject) {
        if passwordTextField.text.isEmpty {
            passwordTextField.text = "Password"
        }
    }
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        
        // dismisses keyboard from textViews
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: {
            self.signInTextFieldView.center = self.initialSignInFormCenter
            self.signInButtonView.center = self.initialSignInButtonCenter
        })
    }
    
    func animateUpSignInForm() {
        // If statement ensures views only animate once
        if initialSignInFormCenter == signInTextFieldView.center {
            UIView.animateWithDuration(0.4, animations: {
                self.signInTextFieldView.center.y -= 90
                self.signInButtonView.center.y -= 250
            })
        }
    }
}
