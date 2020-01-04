//
//  Stack.swift
//  MathMachine
//
//  Created by Cyril Garcia on 11/27/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import Foundation

class Stack {
    private static var elements = [Double]()
    
    public static func push(_ val: Double) {
        elements.append(val)
    }
    
    public static func peek() -> Double? {
        return elements.last
    }
    
    public static func pop() -> Double? {
        return elements.popLast()
    }
}
