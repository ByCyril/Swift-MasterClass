//
//  DailyWeatherView.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class DailyWeatherView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    private var dailyWeatherData = [DailyWeatherData]()
    
    @IBOutlet var tableView: UITableView!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        NotificationCenter.default.addObserver(self, selector: #selector(update), name: Notification.Name("daily"), object: nil)
    }
    
    @objc
    func update(_ object: NSNotification) {
        if let obj = object.object as? [DailyWeatherData] {
            dailyWeatherData = obj
            tableView.delegate = self
            tableView.dataSource = self
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyWeatherData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        let obj = dailyWeatherData[indexPath.row]
        cell.textLabel?.text = obj.highTemp + "/" + obj.lowTemp
        cell.detailTextLabel?.text = obj.dailySummary
        return cell
    }
}
