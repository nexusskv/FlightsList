//
//  FlightsViewModel+Row.swift
//  FlightsList
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewModel {
    
    /// ---> Function for add selected row to table  <--- ///
    func addSelectedRow(_ view: FlightsViewController, index: IndexPath) {
        view.selectedIndex = index.row
        
        if let object = view.dataArray[index.row] as? FlightObject {
            view.selectedFlight = object
        }
        
        view.dataArray[index.row] = CustomerObject() as AnyObject
        
        refreshTable(view.flightsTable,
                     index: index,
                     type: .add)
    }
    
    
    /// ---> Function for remove selected row from table  <--- ///
    func removeSelectedRow(_ view: FlightsViewController) {
        view.dataArray[view.selectedIndex] = view.selectedFlight as AnyObject
        refreshTable(view.flightsTable,
                     index: IndexPath(row: view.selectedIndex, section: 0),
                     type: .remove)
        
        view.selectedIndex   = -1
        view.selectedFlight  = nil
    }
}
