//
//  CurrentWeatherView.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class CurrentWeatherView: UIView {
    
    @IBOutlet var currentTemp: UILabel!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        NotificationCenter.default.addObserver(self, selector: #selector(update), name: Notification.Name("current"), object: nil)
    }
    
    @objc
    func update(_ object: NSNotification) {
        if let obj = object.object as? CurrentWeatherData {
            currentTemp.text = "Currently: " + obj.temperature
        }
    }
    
}
