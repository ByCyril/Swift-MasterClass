//
//  ViewController.swift
//  OOP
//
//  Created by Cyril Garcia on 11/21/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func f(x: Int) -> Int {
        return (5 * x) + 3
    }
    
    func summation(_ function:(Int) -> Int) -> Int {
        var t = 0
        
        for i in 1...5 {
            t += function(i)
        }
        return t
    }
    
}
