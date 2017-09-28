//
//  Wage.swift
//  MyWageInSwiftWorld
//
//  Created by Вячеслав Горлов on 28.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import Foundation

class Wage {
    class func hours(forWage wage: Double, withPrice price: Double) -> Int {
        return Int((price / wage).rounded(.up))
    }
}
