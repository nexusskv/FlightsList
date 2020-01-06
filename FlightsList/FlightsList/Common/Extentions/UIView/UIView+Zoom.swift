//
//  UIView+Zoom.swift
//  FlightsList
//
//  Created by Rost on 05.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    /// ---> Function for add zoom highlight effect to view with completion <--- ///
    func zoomView(_ completion: @escaping (() -> Void)) {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }, completion: { _ in
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                self.transform = CGAffineTransform(scaleX: 1.02, y: 1.02)
            }, completion: { _ in
                self.transform = .identity
                
                completion()
            })
        })
    }
}
