//
//  FlightsViewController+TableDataSource.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController: UITableViewDataSource {
            
    /// ---> Function of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeCell(tableView, at: indexPath)

        return cell
    }
    
    
    /// ---> Function of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return makeRowsCount()
    }
}
