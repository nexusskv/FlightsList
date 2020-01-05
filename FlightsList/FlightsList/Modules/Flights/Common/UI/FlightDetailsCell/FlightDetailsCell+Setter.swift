//
//  FlightDetailsCell+Setter.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightDetailsCell {
          
    /// ---> Function for UI customisations <--- ///
    func customizeUI() {        
        roundView.roundCorners(12)
        
        requestButton.roundCorners(12)
        
        selectionStyle = .none
    }
    
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ object: CustomerObject) {
        
    }
}
