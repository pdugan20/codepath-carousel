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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backUpView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backUpView.alpha = 0.0

        scrollView.delegate = self
        // scrollView.pagingEnabled = true
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        // scrollView.contentSize = imageView.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(self.scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.4, animations: {
                self.backUpView.alpha = 1.0
            })
        } else {
            pageControl.hidden = false
        }
    }

}
