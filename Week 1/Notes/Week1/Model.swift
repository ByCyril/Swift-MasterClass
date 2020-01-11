//
//  Model.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

class Model: UIView {
    
//    add observer to class
    func add(_ observer: Any, name: String) {
        let name = Notification.Name(name)
        NotificationCenter.default.addObserver(observer, selector: #selector(update(_:)), name: name, object: nil)
    }
    
    func post(_ object: Any, to name: String) {
        let name = Notification.Name(name)
        NotificationCenter.default.post(name: name, object: object)
    }
    
    @objc
    public func update(_ object: NSNotification) {}
}
