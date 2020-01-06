//
//  FlightsViewController+Row.swift
//  FlightsList
//
//  Created by Rost on 05.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController {
    
    /// ---> Function for add selected row to table  <--- ///
    func addSelectedRow(_ index: IndexPath) {
        selectedIndex = index.row
        
        if let object = dataArray[index.row] as? FlightObject {
            selectedFlight = object
        }
        
        dataArray[index.row] = CustomerObject() as AnyObject
        refreshTable(flightsTable,
                     index: index,
                     type: .add)
    }
    
    
    /// ---> Function for remove selected row from table  <--- ///
    func removeSelectedRow() {
        dataArray[selectedIndex] = selectedFlight as AnyObject
        refreshTable(flightsTable,
                     index: IndexPath(row: selectedIndex, section: 0),
                     type: .remove)
        selectedIndex   = -1
        selectedFlight  = nil
    }
    
    
    /// ---> Function for refresh table with animation  <--- ///
    func refreshTable(_ table: UITableView, index: IndexPath , type: RowsActions) {
        table.performBatchUpdates({
            switch type {
                case .add:
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        UIView.transition(with: table,
                                          duration: 0.4,
                                          options: .transitionCrossDissolve,
                                          animations: { table.reloadRows(at: [index], with: .top) },
                                          completion: nil)
                    }
                case .remove:
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        UIView.transition(with: table,
                                          duration: 0.4,
                                          options: .transitionCrossDissolve,
                                          animations: { table.reloadRows(at: [index], with: .bottom) },
                                          completion: nil)
                    }
            }
        })
    }
}
