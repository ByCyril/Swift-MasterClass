//
//  ViewController.swift
//  WeatherLite
//
//  Created by Cyril Garcia on 1/17/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var network: NetworkManager!
    private var model: Model!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlSession = URLSession.shared
        model = Model()
        network = NetworkManager(session: urlSession, model: model)
        
        let url = URL(string: "https://api.darksky.net/forecast/1937bd4b1b2b69fde2f5eaeae0b5a5f0/37.8267,-122.4233")!
        network.request(url: url)
    }
}
