//
//  IntroViewController.swift
//  codepath-carousel
//
//  Created by Patrick on 5/13/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // scrollView.pagingEnabled = true
        // scrollView.contentSize = CGSize(width: 320, height: 1136)
        scrollView.contentSize = imageView.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
