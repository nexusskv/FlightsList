//
//  CAGradientLayer+Maker.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension CAGradientLayer {
    
    /// ---> Function for make custom gradient layer  <--- ///
    static func makeGradient(_ colors: [CGColor], rect: CGRect, points: [CGPoint]) -> CAGradientLayer {
        let gradient        = CAGradientLayer()
        gradient.colors     = colors
        gradient.locations  = [0.0 , 1.0]
        gradient.startPoint = points[0]
        gradient.endPoint   = points[1]
        gradient.frame      = rect

        return gradient
    }
}

