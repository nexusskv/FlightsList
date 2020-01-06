//
//  FlightDetailsCell.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightDetailsCell: BaseCell {
    @IBOutlet weak var senderLogo: UIImageView!
    @IBOutlet weak var userTitle: UILabel!
    @IBOutlet weak var ratingView: StarsView!
    @IBOutlet weak var requestButton: UIButton!
    @IBOutlet weak var pledgeTitle: UILabel!
    @IBOutlet weak var deliveryCostLabel: UILabel!
    @IBOutlet weak var deadlineLabel: UILabel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
}



