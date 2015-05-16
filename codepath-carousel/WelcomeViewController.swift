//
//  WelcomeViewController.swift
//  codepath-carousel
//
//  Created by Patrick on 5/15/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        // scrollView.pagingEnabled = true
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        println("scrolled")
        // Get the current page based on the scroll offset
        var page : Int = Int(round(self.scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }

}
