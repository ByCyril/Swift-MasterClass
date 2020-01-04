//
//  POPNotes.swift
//  OOP
//
//  Created by Cyril Garcia on 1/4/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

protocol SomeDataSource {
    func specifyAConstraint() -> Int
}

class A: SomeDataSource {
    
    let b = B()
    
    init() {
        b.dataSource = self
    }
    
    func specifyAConstraint() -> Int {
        return 5
    }
    
}

class B {
    var dataSource: SomeDataSource?
    
    init() {
    }
    
    func seeDataSource() {
        print(dataSource?.specifyAConstraint())
    }
}




//protocol Vehicle {
//    var odemeter: Double? { set get }
//    var speed: Double? { set get }
//
//    func drive()
//    func reverse()
//    func park()
//}
//
//protocol GasVehicle {
//    var fuelLevel: Double { set get }
//    func refuel()
//}
//
//protocol ElectricVehicle {
//    var batteryLevel: Double { set get }
//    func recharge()
//}
//
//class SportsCar: Vehicle, GasVehicle {
//    var fuelLevel: Double = 100.0
//
//    func refuel() {}
//
//    var odemeter: Double?
//
//    var speed: Double?
//
//    func drive() {}
//
//    func reverse() {}
//
//    func park() {}
//
//}
//
//class ElectricCar: Vehicle, ElectricVehicle {
//
//    init() {}
//    var batteryLevel: Double = 100.0
//
//    func recharge() {}
//
//    var odemeter: Double?
//    var speed: Double?
//
//    func drive() {}
//
//    func reverse() {}
//
//    func park() {}
//
//}



//class Vehicle {
//    var odemeter: Double?
//    var fuelLevel: Double?
//    var speed: Double?
//
//    func drive() {}
//    func reverse() {}
//    func park() {}
//    func refuel() {}
//}
//
//class SportsCar: Vehicle {
//
//}
//
//class ElectricCar: Vehicle {
//    override func refuel() {
////        recharge
//    }
//}
//
//class Track {
//    let electricCar = ElectricCar()
//
//    init() {
//        electricCar.refuel()
//    }
//}
