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
        let viewSize = flightsTable.bounds.size
        let gradientRect = CGRect(x: 0.0, y: 0.0, width: viewSize.width, height: viewSize.height)
        
        let bgView = UIView.makeGradientView(gradientRect)

        flightsTable.backgroundView     = bgView
        
        flightsTable.tableFooterView    = UIView()
    }
    
    
    /// ---> Function for set table data source  <--- ///
    func setDataSource() {
        dataArray = [AnyObject]()
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            for _ in 0 ..< 20 {
                strongSelf.dataArray.append(FlightObject() as AnyObject)
            }
        
            DispatchQueue.main.async {
                strongSelf.flightsTable.reloadData()
            }
        }
    }
    
    
    /// ---> Function for handle user tap by table cells  <--- ///
    func handleDetailsTap(_ button: UIButton) {
        button.zoomView({ [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                strongSelf.removeSelectedRow()
            }
        })
    }
}
