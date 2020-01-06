//
//  Constants.swift
//  FlightsList
//
//  Created by Rost on 04.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


/// ---> Colors for gradient view  <--- ///
let firstColor      = UIColor(named: "gradientFirstColor")!.cgColor
let secondColor     = UIColor(named: "gradientSecondColor")!.cgColor
let clearColor      = UIColor.clear.cgColor


/// ---> Types of actions for rows  <--- ///
enum RowsActions: Int {
    case add = 0
    case remove
}
