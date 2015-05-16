//
//  ConversationsViewController.swift
//  codepath-carousel
//
//  Created by Patrick Dugan on 5/15/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

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
    
}
