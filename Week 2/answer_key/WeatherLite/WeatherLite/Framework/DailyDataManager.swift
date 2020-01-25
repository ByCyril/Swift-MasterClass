//
//  DailyDataManager.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

final class DailyDataManager: DataManager {
    func process(_ data: [String : AnyObject]) -> [WeatherData]? {
        var dailyDataCollection = [DailyWeatherData]()
        
        guard let weatherData = data["daily"] as? [String: AnyObject] else { return dailyDataCollection }
        guard let dailyData = weatherData["data"] as? [[String: AnyObject]] else { return dailyDataCollection }

        for data in dailyData {
            var dayData = DailyWeatherData()
            
            if let time = data["time"] as? TimeInterval {
                dayData.time = time
            }
            if let dailySummary = data["summary"] {
                dayData.dailySummary = String(describing: dailySummary)
            }
            if let iconImage = data["icon"] {
                dayData.iconImage = String(describing: iconImage)
            }
            if let sunriseTime = data["sunriseTime"] as? TimeInterval {
                dayData.sunriseTime = sunriseTime
            }
            if let sunsetTime = data["sunsetTime"] as? TimeInterval {
                dayData.sunsetTime = sunsetTime
            }
            if let moonPhase = data["moonPhase"] {
                dayData.moonPhase = String(describing: moonPhase)
            }
            if let chanceOfRain = data["precipProbability"]?.doubleValue {
                dayData.chanceOfRain = chanceOfRain.percentage()
            }
            if let highTemp = data["temperatureHigh"] {
                dayData.highTemp = highTemp.doubleValue.temp()
            }
            if let lowTemp = data["temperatureLow"] {
                dayData.lowTemp = lowTemp.doubleValue.temp()
            }
            if let humidity = data["humidity"]?.doubleValue {
                dayData.humidity = humidity.percentage()
            }
            if let windSpeed = data["windSpeed"] {
                dayData.windSpeed = String(describing: windSpeed)
            }
            if let uvIndex = data["uvIndex"] {
                dayData.uvIndex = String(describing: uvIndex)
            }
            if let ozone = data["ozone"] {
                dayData.ozone = String(describing: ozone)
            }
            if let cloudCover = data["cloudCover"]?.doubleValue {
                dayData.cloudCover = cloudCover.percentage()
            }
            if let highTempTime = data["highTempTime"] as? TimeInterval {
                dayData.highTempTime = highTempTime
            }
            if let lowTempTime = data["lowTempTime"] as? TimeInterval {
                dayData.lowTempTime = lowTempTime
            }
            dailyDataCollection.append(dayData)
        }
        return dailyDataCollection
    }
}
