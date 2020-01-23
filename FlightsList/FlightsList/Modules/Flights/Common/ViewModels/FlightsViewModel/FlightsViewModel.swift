//
//  FlightsViewModel.swift
//  FlightsList
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class FlightsViewModel {
        
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: FlightsViewController) {
        let viewSize = view.flightsTable.bounds.size
        let gradientRect = CGRect(x: 0.0, y: 0.0, width: viewSize.width, height: viewSize.height)
        
        let bgView = UIView.makeGradientView(gradientRect)

        view.flightsTable.backgroundView     = bgView
        
        view.flightsTable.tableFooterView    = UIView()
    }
    
    
    /// ---> Function for set table data source  <--- ///
    func makeDataSource(_ view: FlightsViewController) {
        view.dataArray = [AnyObject]()
        
        DispatchQueue.global(qos: .userInteractive).async {
            for _ in 0 ..< 20 {
                view.dataArray.append(FlightObject() as AnyObject)
            }
        
            DispatchQueue.main.async {
                view.flightsTable.reloadData()
            }
        }
    }
    
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ table: UITableView, index: IndexPath, array: [AnyObject], flight: FlightObject?, selected: Int) -> UITableViewCell {
        if selected == index.row {
            if let cell = table.dequeueReusableCell(withIdentifier: "FlightDetailsCell", for: index) as? FlightDetailsCell {
                
                if let object = array[index.row] as? CustomerObject {
                    cell.viewModel.setValues(cell, customer: object, object: flight, index: index)
                }
                
                return cell
            }
        } else {
            if let cell = table.dequeueReusableCell(withIdentifier: "FlightsCell", for: index) as? FlightsCell {
                
                if let object = array[index.row] as? FlightObject {
                    cell.viewModel.setValues(cell, object: object, index: index)
                }
                
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    func makeHeight(_ index: IndexPath, selected: Int) -> CGFloat {
        if selected == index.row {
            return 410.0
        }
        
        return 170.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    func makeRowsCount(_ objects: [AnyObject]?) -> Int {
        if let array = objects {
            return array.count
        }
        
        return 0
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
