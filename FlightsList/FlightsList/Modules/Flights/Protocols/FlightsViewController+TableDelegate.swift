//
//  FlightsViewController+TableDelegate.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension FlightsViewController: UITableViewDelegate {
            
    /// ---> Function of table view delegate protocol <--- ///
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return makeHeight(indexPath)
    }
    
    
    /// ---> Function of table view delegate protocol <--- ///
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        presentDetails(tableView, at: indexPath)
    }
}
