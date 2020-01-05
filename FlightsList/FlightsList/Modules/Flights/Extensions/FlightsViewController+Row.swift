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
    
    func addSelectedRow(_ index: IndexPath) {
        selectedIndex = index.row
        dataArray[index.row] = CustomerObject() as AnyObject
        refreshTable(index)
    }
    
    
    func removeSelectedRow() {
        dataArray[selectedIndex] = FlightObject() as AnyObject
        refreshTable(IndexPath(row: selectedIndex, section: 0))
        selectedIndex = -1
    }
    
    
    func refreshTable(_ index: IndexPath) {
        flightsTable.beginUpdates()
        
        flightsTable.deleteRows(at: [index], with: .fade)
        flightsTable.insertRows(at: [index], with: .fade)
        
        flightsTable.endUpdates()

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIView.transition(with: self.flightsTable,
                              duration: 0.4,
                              options: .transitionCrossDissolve,
                              animations: { self.flightsTable.reloadData() },
                              completion: nil)
        }

    }
}
