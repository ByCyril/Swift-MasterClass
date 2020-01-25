//
//  DailyWeather.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

struct DailyWeatherData: WeatherData {
    var time: TimeInterval = 0.0
    var sunriseTime: TimeInterval = 0.0
    var sunsetTime: TimeInterval = 0.0
    var highTempTime: TimeInterval = 0.0
    var lowTempTime: TimeInterval = 0.0
    var dailySummary: String = "NA"
    var iconImage: String = "NA"
    var moonPhase: String = "NA"
    var chanceOfRain: String = "NA"
    var highTemp: String = "NA"
    var lowTemp: String = "NA"
    var humidity: String = "NA"
    var windSpeed: String = "NA"
    var uvIndex: String = "NA"
    var ozone: String = "NA"
    var cloudCover: String = "NA"
}
