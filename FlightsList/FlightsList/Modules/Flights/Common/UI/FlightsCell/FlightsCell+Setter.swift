//
//  FlightsCell+Setter.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsCell {
    
    /// ---> Function for UI customisations <--- ///
    func setupUI() {
        roundView.roundCorners(12)
    }
    
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ object: FlightObject, index: IndexPath) {
        countLabel.text     = "\(index.row + 1)"
        dateLabel.text      = "TODAY"
        timeLabel.text      = "06:30 PM"
        fromLabel.text      = object.fromPlace
        toLabel.text        = object.toPlace
        requesLabel.text    = "\(object.requesNumber)"
        costLabel.text      = "$" + "\(object.costFlight)"
        weightLabel.text    = object.weightType
    }
}

