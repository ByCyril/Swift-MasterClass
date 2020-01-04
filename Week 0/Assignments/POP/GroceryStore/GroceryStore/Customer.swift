//
//  Customer.swift
//  GroceryStore
//
//  Created by Cyril Garcia on 1/3/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

struct Customer: Hashable {
    
    private var amountWillPay: Double
    
    init(_ amountWillPay: Double) {
        self.amountWillPay = amountWillPay
    }
    
    func pay() -> Double {
        return amountWillPay
    }
    
}
