//
//  FeedViewController.swift
//  codepath-carousel
//
//  Created by Patrick Dugan on 5/15/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
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
