//
//  GroceryStoreTests.swift
//  GroceryStoreTests
//
//  Created by Cyril Garcia on 1/3/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import XCTest
@testable import GroceryStore

class GroceryStoreTests: XCTestCase, GroceryStoreDataSource, GroceryStoreDelegate{
    
    func testStore() {
        let store = GroceryStore()
        store.delegate = self
        store.dataSource = self
        
        let customerA = Customer(5.0)
        let customerB = Customer(2.0)
        let customerC = Customer(12.0)
        let customerD = Customer(5.6)
        let customerE = Customer(17.99)
        let customerF = Customer(1.0)
        let customerG = Customer(5.0)
        let customerH = Customer(25.98)
        
        XCTAssertTrue(store.customerEnters(customerA))
        XCTAssertTrue(store.customerEnters(customerB))
        XCTAssertTrue(store.customerEnters(customerC))
        XCTAssertTrue(store.customerEnters(customerD))
        XCTAssertTrue(store.customerEnters(customerE))
        XCTAssertFalse(store.customerEnters(customerF))
        
        store.checkout(customerA)
        store.checkout(customerB)
        store.customerLeaves(customerD)
        XCTAssertTrue(store.customerEnters(customerF))
        XCTAssertTrue(store.customerEnters(customerG))
        XCTAssertTrue(store.customerEnters(customerH))
        
        store.checkout(customerG)
        store.checkout(customerH)
        store.checkout(customerF)
        store.customerLeaves(customerE)
        store.customerLeaves(customerC)

        store.totalCustomerCount()
        store.totalRevenue()
    }
    
    func totalCustomers(_ total: Int) {
        XCTAssertEqual(total, 0)
    }
    
    func maxNumberOfCustomersInStore() -> Int {
        return 5
    }
    
    func storeRevenue(_ total: Double) {
        XCTAssertEqual(total, 38.98, accuracy: 0.01)
    }
}
