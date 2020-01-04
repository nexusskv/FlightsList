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
        flightsTable.tableFooterView = UIView()
    }

    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ sender: UITableView, at index: IndexPath) -> UITableViewCell {
        if let cell = sender.dequeueReusableCell(withIdentifier: "FlightsCell", for: index) as? FlightsCell {
            
            let object = dataArray[index.row]
            
            cell.setValues(object)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    func makeHeight(_ index: Int) -> CGFloat {
        return 100.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    func makeRowsCount() -> Int {
        return dataArray.count
    }
    
    
    /// ---> Function for present details view  <--- ///
    func presentDetails(_ index: Int) {
        let selectedFlight = dataArray[index]

    }
}
