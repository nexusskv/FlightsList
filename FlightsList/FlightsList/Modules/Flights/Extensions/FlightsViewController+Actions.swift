//
//  FlightsViewController+Actions.swift
//  FlightsList
//
//  Created by Rost on 05.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController {
    
    /// ---> Action for hamburger button  <--- ///
    @IBAction func hamburgerButtonTapped(_ sender: UIButton) {
        handleDetailsTap(sender)
    }
    
    
    /// ---> Action for request button  <--- ///
    @IBAction func requestButtonTapped(_ sender: UIButton) {
        handleDetailsTap(sender)
    }
}
