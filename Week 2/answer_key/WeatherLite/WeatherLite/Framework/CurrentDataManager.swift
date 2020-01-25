//
//  CurrentDataManager.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/17/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

final class CurrentDataManager: DataManager {
    func process(_ data: [String: AnyObject]) -> WeatherData? {
        
        var current = CurrentWeatherData()
        
        guard let currentlyData = data["currently"] as? [String: AnyObject] else { return current }
        
        if let ozone = currentlyData["ozone"] {
            current.ozone = String(describing: ozone)
        }
        if let uvIndex = currentlyData["uvIndex"] {
            current.uvIndex = String(describing: uvIndex)
        }
        if let dewPoint = currentlyData["dewPoint"] {
            current.dewPoint = String(describing: dewPoint)
        }
        if let visibility = currentlyData["visibility"]?.doubleValue {
            current.visibility = visibility.stringRound()
        }
        if let pressure = currentlyData["pressure"] {
            current.pressure = String(describing: pressure)
        }
        if let cloudCover = currentlyData["cloudCover"]?.doubleValue {
            current.cloudCover = cloudCover.percentage()
        }
        if let precipProbability = currentlyData["precipProbability"]?.doubleValue {
            current.precipProbability = precipProbability.percentage()
        }
        if let summary = currentlyData["summary"] {
            current.summary = String(describing: summary)
        }
        if let time = currentlyData["time"] as? TimeInterval {
            current.time = time
        }
        if let windBearing = currentlyData["windBearing"] {
            current.windBearing = String(describing: windBearing)
        }
        if let windSpeed = currentlyData["windSpeed"]?.doubleValue {
            current.windSpeed = windSpeed.stringRound()
        }
        if let precipIntensity = currentlyData["precipIntensity"] {
            current.precipIntensity = String(describing: precipIntensity)
        }
        if let icon = currentlyData["icon"] {
            current.icon = String(describing: icon)
        }
        if let temperature = currentlyData["temperature"]?.doubleValue {
            current.temperature = temperature.temp()
        }
        if let humidity = currentlyData["humidity"] {
            current.humidity = String(describing: humidity)
        }
        if let apparentTemperature = currentlyData["apparentTemperature"]?.doubleValue {
            current.apparentTemperature = apparentTemperature.temp()
        }
        return current
    }
}
