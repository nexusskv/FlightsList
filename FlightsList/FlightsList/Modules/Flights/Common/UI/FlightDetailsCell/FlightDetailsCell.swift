//
//  FlightDetailsCell.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightDetailsCell: FlightsCell {
    @IBOutlet weak var requestButton: UIButton!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeUI()
    }
}



