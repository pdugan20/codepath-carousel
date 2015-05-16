//
//  IntroViewController.swift
//  codepath-carousel
//
//  Created by Patrick on 5/13/15.
//  Copyright (c) 2015 Daily Doog Inc. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate, UIActionSheetDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var introTileImage1: UIImageView!
    @IBOutlet weak var introTileImage2: UIImageView!
    @IBOutlet weak var introTileImage3: UIImageView!
    @IBOutlet weak var introTileImage4: UIImageView!
    @IBOutlet weak var introTileImage5: UIImageView!
    @IBOutlet weak var introTileImage6: UIImageView!
    
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 1700)
        //scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        scrollView.sendSubviewToBack(imageView)
        transformTiles()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(introScrollView: UIScrollView) {
        transformTiles()
    }
    
    func transformTiles() {
        var offset = Float(scrollView.contentOffset.y)
        
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTileImage1.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation1) * M_PI / 180))
        introTileImage1.transform = CGAffineTransformTranslate(introTileImage1.transform, CGFloat(tx1), CGFloat(ty1))
        introTileImage1.transform = CGAffineTransformScale(introTileImage1.transform, CGFloat(scale1), CGFloat(scale1))
        
        introTileImage2.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation2) * M_PI / 180))
        introTileImage2.transform = CGAffineTransformTranslate(introTileImage2.transform, CGFloat(tx2), CGFloat(ty2))
        introTileImage2.transform = CGAffineTransformScale(introTileImage2.transform, CGFloat(scale2), CGFloat(scale2))
        
        introTileImage3.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation3) * M_PI / 180))
        introTileImage3.transform = CGAffineTransformTranslate(introTileImage3.transform, CGFloat(tx3), CGFloat(ty3))
        introTileImage3.transform = CGAffineTransformScale(introTileImage3.transform, CGFloat(scale3), CGFloat(scale3))
        
        introTileImage4.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation4) * M_PI / 180))
        introTileImage4.transform = CGAffineTransformTranslate(introTileImage4.transform, CGFloat(tx4), CGFloat(ty4))
        introTileImage4.transform = CGAffineTransformScale(introTileImage4.transform, CGFloat(scale4), CGFloat(scale4))
        
        introTileImage5.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation5) * M_PI / 180))
        introTileImage5.transform = CGAffineTransformTranslate(introTileImage5.transform, CGFloat(tx5), CGFloat(ty5))
        introTileImage5.transform = CGAffineTransformScale(introTileImage5.transform, CGFloat(scale5), CGFloat(scale5))
        
        introTileImage6.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation6) * M_PI / 180))
        introTileImage6.transform = CGAffineTransformTranslate(introTileImage6.transform, CGFloat(tx6), CGFloat(ty6))
        introTileImage6.transform = CGAffineTransformScale(introTileImage6.transform, CGFloat(scale6), CGFloat(scale6))
        
    }
}
