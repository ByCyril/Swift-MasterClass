//
//  Calculus.swift
//  OOP
//
//  Created by Cyril Garcia on 1/4/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

class Calculus: Math {
    
    func summation(_ function: Function, upper: Int) -> Int {
        var sum = 0
        for x in 1...upper {
            sum += function.f(x)
        }
        return sum
    }
    
}

protocol Function {
    func f(_ x: Int) -> Int
}

class FuncA: Math, Function {
//    5x^2 + 3
    func f(_ x: Int) -> Int {
        return add(mul(5, mul(x, x)), 3)
    }
}
