//
//  ViewController.swift
//  TestAutoLayout
//
//  Created by ys on 16/4/8.
//  Copyright © 2016年 jzh. All rights reserved.
//  这种方式设置button之间的隐藏于显示很好

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstBtnWidth: NSLayoutConstraint!

    @IBOutlet weak var firstBtnRight: NSLayoutConstraint!
    
    @IBAction func buttonAction(sender: UIButton) {
        
        if self.firstBtnWidth.constant == 0 {
            self.firstBtnWidth.constant = 50
            self.firstBtnRight.constant = 20
        } else {
            self.firstBtnRight.constant = 0
            self.firstBtnWidth.constant = 0
        }
        UIView.animateWithDuration(5, delay: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: { 
            self.view.layoutIfNeeded()
            }, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

