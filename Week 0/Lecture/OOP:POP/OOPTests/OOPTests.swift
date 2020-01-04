//
//  OOPTests.swift
//  OOPTests
//
//  Created by Cyril Garcia on 11/26/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import XCTest
@testable import OOP
class OOPTests: XCTestCase {
    func testGeometry() {
        let geometry = Geometry()
        XCTAssertEqual(geometry.areaOfCircle(5), 78.539, accuracy: 0.001)
        XCTAssertEqual(geometry.areaOfTriangle(5, 6), 15)
        XCTAssertEqual(geometry.areaOfSquare(5, 6), 30)
    }
    
    func testCalculus() {
        let calc = Calculus()
        XCTAssertEqual(calc.summation(FuncA(), n: 5), 85)
        XCTAssertEqual(calc.summation(FuncB(), n: 5), 1275)
    }
    
    func testCircle() {
        let circle = Circle(color: .green, radius: 5, name: "MyCircle")
        XCTAssertEqual(circle.circumference(), 31.42, accuracy: 0.01)
    }
    
    func testVC() {
        let vc = ViewController()
        XCTAssertEqual(vc.summation(function: f(x:)), 85)
    }
    
    func f(x: Int) -> Int {
        return (5 * x) + 2
    }
}
