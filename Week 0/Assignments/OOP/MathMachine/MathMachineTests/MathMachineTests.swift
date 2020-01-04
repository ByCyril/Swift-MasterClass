//
//  MathMachineTests.swift
//  MathMachineTests
//
//  Created by Cyril Garcia on 11/27/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import XCTest
@testable import MathMachine

class MathMachineTests: XCTestCase {
    
    // f(x) = 5x^2 - 3
    func fx(_ x: Double) -> Double? {
        let mathMachine = MathMachine()
        mathMachine.command(Push(3))
        mathMachine.command(Push(x))
        mathMachine.command(Push(x))
        mathMachine.command(Push(5))
        mathMachine.command(Mul())
        mathMachine.command(Mul())
        mathMachine.command(Sub())
        mathMachine.execute()
        return mathMachine.results
    }
    
    // g(x) x^3 + 3x^2 - 2x + 1
    func gx(_ x: Double) -> Double? {
        let mathMachine = MathMachine()
        mathMachine.command(Push(x))
        mathMachine.command(Push(x))
        mathMachine.command(Push(x))
        mathMachine.command(Mul())
        mathMachine.command(Mul())
        
        mathMachine.command(Push(x))
        mathMachine.command(Push(x))
        mathMachine.command(Push(3.0))
        mathMachine.command(Mul())
        mathMachine.command(Mul())
        
        mathMachine.command(Push(x))
        mathMachine.command(Push(2.0))
        mathMachine.command(Mul())
        
        mathMachine.command(Push(1.0))
        mathMachine.command(Add())
        mathMachine.command(Add())
        mathMachine.command(Add())
        mathMachine.execute()
        return mathMachine.results
        
    }
    
    func testMathMachine() {
        XCTAssertEqual(fx(2.0)!, 17.0)
        XCTAssertEqual(fx(4.0)!, 77.0)
        
        XCTAssertEqual(gx(2.0)!, 25.0)
        XCTAssertEqual(gx(5.0)!, 211.0)
    }
    
}
