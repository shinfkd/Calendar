//
//  DayView.swift
//  Calendar
//
//  Created by Shintaro Fukuda on 2015/07/15.
//  Copyright (c) 2015年 Shintaro Fukuda All rights reserved.
//

import UIKit

class DayView: UIView {

    var date: NSDate?
    var isOtherMonth: Bool
    var isSelected: Bool
    required init(coder aDecoder: NSCoder) {
        self.isOtherMonth = false
        self.isSelected = false
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        self.isOtherMonth = false
        self.isSelected = false
        super.init(frame: frame)
    }

}
