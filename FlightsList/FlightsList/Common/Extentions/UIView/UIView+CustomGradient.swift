//
//  UIView+CustomGradient.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    static func makeGradientView(_ rect: CGRect) -> UIView {
        let firstColors     = [secondColor, firstColor]
        let secondColors    = [firstColor, secondColor]

        let firstPoints   = [CGPoint(x: 0.0, y: 0.0), CGPoint(x: 1.0, y: 1.0)]
        let secondPoints  = [CGPoint(x: 0.0, y: 1.0), CGPoint(x: 1.0, y: 0.0)]

        let colorsArray = [firstColors, secondColors]
        let pointsArray = [firstPoints, secondPoints]
        
        let gradientView = UIView(frame: rect)
        
        for i in 0 ..< colorsArray.count {
            let colors = colorsArray[i]
            let points = pointsArray[i]
            let gradientLayer  = CAGradientLayer.makeGradient(colors,
                                                              rect: rect,
                                                              points: points)            
            
            gradientView.layer.insertSublayer(gradientLayer, at: UInt32(i))
        }
        
        return gradientView
    }    
}
