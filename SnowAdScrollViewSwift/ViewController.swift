//
//  ViewController.swift
//  SnowAdScrollViewSwift
//
//  Created by SN on 15/6/19.
//  Copyright (c) 2015年 Snow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //测试用图片
    let imageArray = [
        "tutorial_background_00",
        "tutorial_background_01",
        "tutorial_background_02",
        "tutorial_background_03",
        "tutorial_background_04"
    ]
    var scrollView: SnowAdScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = SnowAdScrollView(frame: self.view.frame)
        self.view.addSubview(scrollView)
        
        scrollView.pageControl.pageIndicatorTintColor = UIColor.whiteColor()
        scrollView.pageControl.currentPageIndicatorTintColor = UIColor.redColor()
        scrollView.addPageControl()
        
        scrollView.imageNameArray = imageArray.map{
            return UIImage(named: $0)!
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

