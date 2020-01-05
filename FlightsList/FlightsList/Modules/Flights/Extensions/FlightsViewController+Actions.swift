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
    
    @IBAction func hamburgerButtonTapped(_ sender: UIButton) {
        removeSelectedRow()
    }
    
    @IBAction func requestButtonTapped(_ sender: UIButton) {
        removeSelectedRow()
    }
}
