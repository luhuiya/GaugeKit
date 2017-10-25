//
//  UIColor+Blend.swift
//  SWGauge
//
//  Created by David Pelletier on 2015-03-06.
//  Copyright (c) 2015 Petr Korolev. All rights reserved.
//

import UIKit

func + (left: UIColor, right: UIColor) -> UIColor {
    
    var leftRGBA1:CGFloat = 0.0
    var leftRGBA2:CGFloat = 0.0
    var leftRGBA3:CGFloat = 0.0
    var leftRGBA4:CGFloat = 0.0
    
    var rightRGBA1:CGFloat = 0.0
    var rightRGBA2:CGFloat = 0.0
    var rightRGBA3:CGFloat = 0.0
    var rightRGBA4:CGFloat = 0.0
    
    left.getRed(&leftRGBA1, green: &leftRGBA2, blue: &leftRGBA3, alpha: &leftRGBA4)
    right.getRed(&rightRGBA1, green: &rightRGBA2, blue: &rightRGBA3, alpha: &rightRGBA4)
    
    return UIColor(
        red: max(leftRGBA1, rightRGBA1),
        green: max(leftRGBA2, rightRGBA2),
        blue: max(leftRGBA3, rightRGBA3),
        alpha: max(leftRGBA4, rightRGBA4)
    )
}

func * (left: CGFloat, right: UIColor) -> UIColor {
    
    var rightRGBA1:CGFloat = 0.0
    var rightRGBA2:CGFloat = 0.0
    var rightRGBA3:CGFloat = 0.0
    var rightRGBA4:CGFloat = 0.0
    
    right.getRed(&rightRGBA1, green: &rightRGBA2, blue: &rightRGBA3, alpha: &rightRGBA4)
    
    return UIColor(
        red: rightRGBA1 * left,
        green: rightRGBA2 * left,
        blue: rightRGBA3 * left,
        alpha: rightRGBA4
    )
}

func * (left: UIColor, right: CGFloat) -> UIColor {
    return right * left
}

