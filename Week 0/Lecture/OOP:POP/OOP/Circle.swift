//
//  Circle.swift
//  OOP
//
//  Created by Cyril Garcia on 11/21/19.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class Circle: Geometry {
    
    private(set) var color: UIColor
    private(set) var radius: Double
    private(set) var name: String
    
    init(color: UIColor, radius: Double, name: String) {
        self.color = color
        self.radius = radius
        self.name = name
    }
    
    public func circumference() -> Double {
        return mul(mul(2, Double.pi), radius)
    }
}
