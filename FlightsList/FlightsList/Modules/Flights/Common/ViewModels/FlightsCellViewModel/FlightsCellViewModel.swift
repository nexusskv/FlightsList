//
//  FlightsCellViewModel.swift
//  FlightsList
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightsCellViewModel {
           
    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: FlightsCell, object: FlightObject, index: IndexPath) {
        cell.countLabel.text     = "\(index.row + 1)"
        cell.dateLabel.text      = "TODAY"
        cell.timeLabel.text      = "06:30 PM"
        cell.fromLabel.text      = object.fromPlace
        cell.toLabel.text        = object.toPlace
        cell.requesLabel.text    = "\(object.requesNumber)"
        cell.costLabel.text      = "$" + "\(object.costFlight)"
        cell.weightLabel.text    = object.weightType
    }
}
