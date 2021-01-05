//
//  Wage.swift
//  hour-calculator
//
//  Created by Claudia Maciel on 1/4/21.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
