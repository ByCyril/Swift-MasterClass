//
//  Calculus.swift
//  OOP
//
//  Created by Cyril Garcia on 11/21/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import Foundation

final class Calculus: Arithmetic {
    
    func summation(_ function: Function, n: Int) -> Double {
        
        var total = 0.0
        
        for x in 1...n {
            total += function.f(Double(x))
        }
        
        return total
    }
    
}

protocol Function {
    func f(_ x: Double) -> Double
}

class FuncA: Arithmetic, Function {
//    5x + 2
    func f(_ x: Double) -> Double {
        return add(mul(5, x), 2)
    }
}

class FuncB: Arithmetic, Function {
    //    5x^3 + 2x^2 + x + 5
    func f(_ x: Double) -> Double {
        let a = mul(5, mul(mul(x, x), x))
        let b = mul(2, mul(x, x))
        let c = x
        let d = 5.0

        return add(add(a, b), add(c, d))
    }
}
