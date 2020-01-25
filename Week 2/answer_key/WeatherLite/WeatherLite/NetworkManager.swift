//
//  NetworkManager.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/17/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class NetworkManager {
    
    private var session: URLSession
    private var model: Model
    private var task: URLSessionTask?
    
    init(session: URLSession, model: Model) {
        self.session = session
        self.model = model
    }
    
    public func request(url: URL) {
        task = session.dataTask(with: url, completionHandler: { [weak self] (data, response, error) in
            if let data = data {
                if let response = try? JSONSerialization.jsonObject(with: data, options:.mutableContainers) as? [String: AnyObject] {
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.model.post(CurrentDataManager().process(response), to: "current")
                        self?.model.post(DailyDataManager().process(response), to: "daily")
                        self?.task?.suspend()
                    }
                }
            }
        })
        task?.resume()
    }
    
}
