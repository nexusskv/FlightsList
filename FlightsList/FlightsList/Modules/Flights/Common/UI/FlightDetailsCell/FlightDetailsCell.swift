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
    var viewModel: FlightDetailsCellViewModel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = FlightDetailsCellViewModel()
        
        setupUI()
    }
    
    
    /// ---> Function for UI customisations <--- ///
    func setupUI() {
        roundView.roundCorners(12)
        
        requestButton.roundCorners(12)
        
        senderLogo.roundCorners(9)
        
        pledgeTitle.addBlackShadow()
        costLabel.addBlackShadow()
    }
}



