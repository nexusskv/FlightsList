//
//  FlightsViewController.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightsViewController: UIViewController {
    @IBOutlet weak var flightsTable: UITableView!
    var dataArray: [AnyObject]!
    var viewModel: FlightsViewModel!
    var selectedIndex = -1
    var selectedFlight: FlightObject!
    
            
    /// ---> View life cycle  <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = FlightsViewModel()
        
        viewModel.setupUI(self)
        
        viewModel.makeDataSource(self)
    }
}
