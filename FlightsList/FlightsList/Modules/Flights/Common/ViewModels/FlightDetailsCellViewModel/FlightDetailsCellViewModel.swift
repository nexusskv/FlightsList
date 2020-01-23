//
//  FlightDetailsCellViewModel.swift
//  FlightsList
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightDetailsCellViewModel {
      
    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: FlightDetailsCell, customer: CustomerObject, object: FlightObject?, index: IndexPath) {
        cell.countLabel.text         = "\(index.row + 1)"
        cell.dateLabel.text          = "06:30 PM May 16, 2015"
        
        cell.deliveryCostLabel.text  = "$25"
        cell.deadlineLabel.text      = "24 minutes"
        
        if let flight = object {
            cell.fromLabel.text      = flight.fromPlace
            cell.toLabel.text        = flight.toPlace
            cell.requesLabel.text    = "\(flight.requesNumber)"
            cell.costLabel.text      = "$" + "\(flight.costFlight)"
            cell.weightLabel.text    = flight.weightType
        }
        
        cell.senderLogo.image        = UIImage(named: customer.userLogo)
        cell.userTitle.text          = customer.userName
        
        cell.ratingView.setMaxRating(5)
        cell.ratingView.setRating(Float(customer.userRating))
    }
}
