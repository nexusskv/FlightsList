//
//  FlightsCell.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightsCell: BaseCell {    
    var viewModel: FlightsCellViewModel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = FlightsCellViewModel()
        
        setupUI()
    }
    
    
    /// ---> Function for UI customisations <--- ///
    func setupUI() {
        roundView.roundCorners(12)
    }
}
