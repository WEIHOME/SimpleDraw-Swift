//
//  UIViewForDraw.swift
//  TryDraw
//
//  Created by Weihong Chen on 06/02/2015.
//  Copyright (c) 2015 Weihong. All rights reserved.
//

import UIKit

class UIViewForDraw: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        
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
