//
//  CoffeeShopDataSource.swift
//  CoffeeShop
//
//  Created by Cyril Garcia on 1/3/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

protocol GroceryStoreDataSource {
    func maxNumberOfCustomersInStore() -> Int
}

protocol GroceryStoreDelegate {
    func storeRevenue(_ total: Double)
    func totalCustomers(_ total: Int)
}

struct Customer: Hashable {
    
    private var amountWillPay: Double
    
    init(_ amountWillPay: Double) {
        self.amountWillPay = amountWillPay
    }
    
    func pay() -> Double {
        return amountWillPay
    }
    
}

class GroceryStore {
    var delegate: GroceryStoreDelegate!
    var dataSource: GroceryStoreDataSource!
    
    private var customers = Set<Customer>()
    private var revenue: Double = 0.0
    
    func totalCustomerCount() {
        delegate.totalCustomers(customers.count)
    }
    
    func totalRevenue() {
        delegate.storeRevenue(revenue)
    }
    
    func checkout(_ customer: Customer) {
        if customers.contains(customer) {
            revenue += customer.pay()
            customers.remove(customer)
        }
    }
    
    func customerEnters(_ customer: Customer) -> Bool {
        if customers.count < dataSource.maxNumberOfCustomersInStore() {
            return customers.insert(customer).inserted
        } else {
            return false
        }
    }
    
    func customerLeaves(_ customer: Customer) {
        if customers.contains(customer) {
            customers.remove(customer)
        }
    }
}
