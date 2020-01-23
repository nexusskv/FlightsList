//
//  FlightsViewModel+Details.swift
//  FlightsList
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewModel {
    
    /// ---> Function for handle user tap by table cells  <--- ///
    func handleDetailsTap(_ view: FlightsViewController, button: UIButton) {
        button.zoomView({ [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                strongSelf.removeSelectedRow(view)
            }
        })
    }
    
    
    /// ---> Function for present details view  <--- ///
    func presentDetails(_ view: FlightsViewController, at index: IndexPath) {
        if let cell = view.flightsTable.cellForRow(at: index) as? FlightsCell {
            if cell.isKind(of: FlightsCell.self) {
                if view.selectedIndex >= 0 {
                    if view.selectedIndex == index.row {
                        removeSelectedRow(view)
                    } else {
                        removeSelectedRow(view)
                                            
                        addSelectedRow(view, index: index)
                    }
                } else {
                    addSelectedRow(view, index: index)
                }
            }
        }
    }
}
