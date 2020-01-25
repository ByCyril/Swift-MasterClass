//
//  DataManager.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

public protocol WeatherData {
    var time: TimeInterval { set get }
}

public protocol DataManager: AnyObject {
    func process(_ data: [String: AnyObject]) -> [WeatherData]?
    func process(_ data: [String: AnyObject]) -> WeatherData?
}

extension DataManager {
    func process(_ data: [String: AnyObject]) -> [WeatherData]? { return nil }
    func process(_ data: [String: AnyObject]) -> WeatherData? { return nil }
}
