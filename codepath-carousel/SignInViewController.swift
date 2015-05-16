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
            emailTextField.textColor = UIColor.lightGrayColor()
            emailTextField.text = "Email"
        }
    }
    @IBAction func didBeginEditingEmail(sender: AnyObject) {
        self.animateUpSignInForm()
        if emailTextField.text == "Email" {
            emailTextField.text = nil
            emailTextField.textColor = UIColor.blackColor()
        }
    }
    @IBAction func didBeginEditingPassword(sender: AnyObject) {
        self.animateUpSignInForm()
        if passwordTextField.text == "Password" {
            passwordTextField.text = nil
            passwordTextField.secureTextEntry = true
            passwordTextField.textColor = UIColor.blackColor()
        }
    }
    
    @IBAction func didEndEditingPassword(sender: AnyObject) {
        if passwordTextField.text.isEmpty {
            passwordTextField.secureTextEntry = false
            passwordTextField.textColor = UIColor.lightGrayColor()
            passwordTextField.text = "Password"
        }
    }
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        
        var loadingAlert = UIAlertView(title: "Loading...", message: nil, delegate: self, cancelButtonTitle: nil)
        var emailAlert = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: self, cancelButtonTitle: "OK")
        var passwordAlert = UIAlertView(title: "Password Required", message: "Please enter your password", delegate: self, cancelButtonTitle: "OK")
        var signInAlert = UIAlertView(title: "Sign In Failed", message: "Incorrect email or password", delegate: self, cancelButtonTitle: "OK")
        
        // dismisses keyboard from textViews
        // self.view.endEditing(true)
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: {
            self.signInTextFieldView.center = self.initialSignInFormCenter
            self.signInButtonView.center = self.initialSignInButtonCenter
        })
        
        if emailTextField.text.isEmpty || emailTextField.text == "Email" {
            emailAlert.show()
        } else if passwordTextField.text.isEmpty || passwordTextField.text == "Password" {
            passwordAlert.show()
        } else if passwordTextField.text != "password" && emailTextField.text != "pat@gmail.com" {
            loadingAlert.show()
            delay(2) {
                loadingAlert.dismissWithClickedButtonIndex(0, animated: true)
                signInAlert.show()
            }
        } else {
            loadingAlert.show()
            delay(2) {
                loadingAlert.dismissWithClickedButtonIndex(0, animated: true)
                self.performSegueWithIdentifier("loginSegue", sender: nil)
            }
        }
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
