//
//  CalcModel.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

final class CalcViewModel {
    func add(_ x: Int, y: Int) -> String {
        return "\(x + y)"
    }
    
    func sub(_ x: Int, y: Int) -> String {
        return "\(x - y)"
    }
    
    func mul(_ x: Int, y: Int) -> String {
        return "\(x * y)"
    }
    
    func div(_ x: Double, y: Double) -> String {
        return "\(x / y)"
    }
}
