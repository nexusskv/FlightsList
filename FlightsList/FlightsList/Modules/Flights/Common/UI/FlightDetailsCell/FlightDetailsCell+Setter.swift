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
    func setupUI() {        
        roundView.roundCorners(12)
        
        requestButton.roundCorners(12)
        
        senderLogo.roundCorners(9)
        
        pledgeTitle.addBlackShadow()
        costLabel.addBlackShadow()
    }
    
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ customer: CustomerObject, flight: FlightObject, index: IndexPath) {
        countLabel.text         = "\(index.row + 1)"
        dateLabel.text          = "06:30 PM May 16, 2015"
        fromLabel.text          = flight.fromPlace
        toLabel.text            = flight.toPlace
        requesLabel.text        = "\(flight.requesNumber)"
        costLabel.text          = "$" + "\(flight.costFlight)"
        weightLabel.text        = flight.weightType
        deliveryCostLabel.text  = "$25"
        deadlineLabel.text      = "24 minutes"
        
        senderLogo.image        = UIImage(named: customer.userLogo)
        userTitle.text          = customer.userName
        
        ratingView.setMaxRating(5)
        ratingView.setRating(Float(customer.userRating))
    }
}

