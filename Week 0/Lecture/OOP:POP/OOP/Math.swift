//
//  Math.swift
//  OOP
//
//  Created by Cyril Garcia on 11/21/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import Foundation

class Arithmetic {
    
    func add(_ x: Double, _ y: Double) -> Double {
        return x + y
    }

    func sub(_ x: Double, _ y: Double) -> Double {
        return x - y
    }
    
    func mul(_ x: Double, _ y: Double) -> Double {
        return x * y
    }
    
    func div(_ x: Double, _ y: Double) -> Double {
        return x / y
    }
    
    func raise(_ x: Double, to y: Double) -> Double {
        return pow(x, y)
    }
    
}
