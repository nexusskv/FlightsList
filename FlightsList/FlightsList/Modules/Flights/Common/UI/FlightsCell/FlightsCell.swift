//
//  FlightsCell.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightsCell: UITableViewCell {
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var requesLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
}
