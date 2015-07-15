//
//  CircleView.swift
//  Calendar
//
//  Created by Shintaro Fukuda on 2015/07/15.
//  Copyright (c) 2015年 Livesense Inc. All rights reserved.
//

import UIKit

class CircleView: UIView {
    var color: UIColor
    override func drawRect(rect: CGRect) {
        self.color = UIColor.whiteColor()
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, self.backgroundColor?.CGColor)
        CGContextFillRect(context, rect)
        let newRect = CGRectInset(rect, 0.5, 0.5)
        CGContextSetStrokeColorWithColor(context, self.color.CGColor)
        CGContextSetFillColorWithColor(context, self.color.CGColor)
        CGContextAddEllipseInRect(context, newRect);
        CGContextFillEllipseInRect(context, newRect);
        CGContextFillPath(context);
    }

    func setColor(color: UIColor) {
        self.color = color
        self.setNeedsDisplay()
    }
}
