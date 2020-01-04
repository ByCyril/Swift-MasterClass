//
//  Shapes.swift
//  OOP
//
//  Created by Cyril Garcia on 11/21/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import Foundation

class Geometry: Arithmetic {
    
    func areaOfCircle(_ radius: Double) -> Double {
        return mul(Double.pi, mul(radius, radius))
    }
    
    func areaOfSquare(_ base: Double, _ height: Double) -> Double {
        return mul(base, height)
    }
    
    func areaOfTriangle(_ base: Double, _ height: Double) -> Double {
        return div(mul(base, height), 2)
    }
}
