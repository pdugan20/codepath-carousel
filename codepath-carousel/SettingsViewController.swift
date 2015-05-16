//
//  SettingsViewController.swift
//  codepath-carousel
//
//  Created by Patrick Dugan on 5/15/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressCancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {});
    }

}
