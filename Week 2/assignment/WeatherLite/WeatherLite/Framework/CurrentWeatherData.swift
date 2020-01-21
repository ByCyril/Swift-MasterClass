//
//  CurrentWeather.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

struct CurrentWeatherData: WeatherData {    
    var ozone: String = "NA"
    var uvIndex: String = "NA"
    var dewPoint: String = "NA"
    var visibility: String = "NA"
    var pressure: String = "NA"
    var cloudCover: String = "NA"
    var humidity: String = "NA"
    var precipProbability: String = "NA"
    var summary: String = "NA"
    var time: TimeInterval = 0.0
    var windBearing: String = "NA"
    var windSpeed: String = "NA"
    var precipIntensity: String = "NA"
    var icon: String = "NA"
    var temperature: String = "NA"
    var units: String = "us"
    var apparentTemperature: String = "NA"
}
