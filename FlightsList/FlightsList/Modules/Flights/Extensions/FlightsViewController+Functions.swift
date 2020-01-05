//
//  FlightsViewController+Functions.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        let viewSize = flightsTable.bounds.size
        let gradientRect = CGRect(x: 0.0, y: 0.0, width: viewSize.width, height: viewSize.height)
        
        let bgView = UIView.makeGradientView(gradientRect)

        flightsTable.backgroundView     = bgView
        
        flightsTable.tableFooterView    = UIView()
    }
    
    
    /// ---> Function for set table data source  <--- ///
    func setDataSource() {
        for _ in 0 ..< 20 {
            dataArray.append(FlightObject() as AnyObject)
        }
        
        flightsTable.reloadData()
    }
}
