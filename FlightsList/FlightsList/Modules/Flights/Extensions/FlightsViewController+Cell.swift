//
//  FlightsViewController+Cell.swift
//  FlightsList
//
//  Created by Rost on 05.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController {
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ sender: UITableView, at index: IndexPath) -> UITableViewCell {
        if selectedIndex == index.row {
            if let cell = sender.dequeueReusableCell(withIdentifier: "FlightDetailsCell", for: index) as? FlightDetailsCell {
                
                if let object = dataArray[index.row] as? CustomerObject {
                    cell.setValues(object, flight: selectedFlight, index: index)
                }
                
                return cell
            }
        } else {
            if let cell = sender.dequeueReusableCell(withIdentifier: "FlightsCell", for: index) as? FlightsCell {
                
                let object = dataArray[index.row] as! FlightObject
                
                cell.setValues(object, index: index)
                
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    func makeHeight(_ index: IndexPath) -> CGFloat {
        if selectedIndex == index.row {
            return 410.0
        }
        
        return 170.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    func makeRowsCount() -> Int {
        if let array = dataArray {
            return array.count
        }
        
        return 0
    }
    
    
    /// ---> Function for present details view  <--- ///
    func presentDetails(_ table: UITableView, at index: IndexPath) {
        if let cell = table.cellForRow(at: index) as? FlightsCell {
            if cell.isKind(of: FlightsCell.self) {
                if selectedIndex >= 0 {
                    if selectedIndex == index.row {
                        removeSelectedRow()
                    } else {
                        removeSelectedRow()
                                            
                        addSelectedRow(index)
                    }
                } else {
                    addSelectedRow(index)
                }
            }
        }
    }
}
