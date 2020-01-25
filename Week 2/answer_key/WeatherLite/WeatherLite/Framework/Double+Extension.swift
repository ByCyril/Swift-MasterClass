//
//  Double+Extension.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/17/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

extension Double {
    
    public func temp() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 0
        formatter.numberStyle = .decimal
        let temp = formatter.string(from: self.rounded() as NSNumber) ?? "NA"
        return temp + "°"
    }
    
    public enum TimestampFormat: String {
        case halfDate = "E, MMM d"
        case fullDate = "EEEE, MMMM d, yyyy"
        case time = "h:mm a"
        case hour = "h a"
        case day = "EEEE"
    }
    
    public func date(_ format: TimestampFormat, _ timezone: TimeZone? = nil) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.timeZone = timezone ?? TimeZone.current
        return dateFormatter.string(from: Date(timeIntervalSince1970: self))
    }
    
    public func percentage() -> String {
        let val = self * 100.0
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 0
        formatter.numberStyle = .decimal
        let perc = formatter.string(from: val.rounded() as NSNumber) ?? "NA"
        return perc + "%"
    }
    
    public func stringRound() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 2
        
        let val = formatter.string(from: self as NSNumber) ?? "NA"
        return val
    }
}
