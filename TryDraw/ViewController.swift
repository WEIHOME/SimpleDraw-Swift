//
//  ViewController.swift
//  TryDraw
//
//  Created by Weihong Chen on 06/02/2015.
//  Copyright (c) 2015 Weihong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cg = CGRectMake(100, 100, 200, 200)
        
//        var uiOne = UIView(frame: self.view.frame)
//        uiOne.backgroundColor = UIColor.greenColor()
//        uiOne.alpha = 0.1
//        uiOne.backgroundColor = UIColor.greenColor().colorWithAlphaComponent(0.3)

    
        
        var uiOne = UIViewForDraw(frame: cg)
        self.view.addSubview(uiOne)
        
//        self.drawTriangle()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    func drawTriangle(){
        
        let path = UIBezierPath()
        
        path.lineWidth = 2.0
        path.moveToPoint(CGPoint(x: 100,y: 200))
        path.addLineToPoint(CGPoint(x: 150, y: 300))
        path.addLineToPoint(CGPoint(x: 50, y: 300))
        path.closePath()
        
        UIColor.blackColor().setStroke()
        UIColor.greenColor().setFill()
        
        path.fill()
    }
    
}

