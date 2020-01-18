//
//  Model.swift
//  BrickCad
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

class Model: UIView {
    
    func add(_ any: Any,
             name: String,
             notification: NotificationCenter = NotificationCenter.default) {
        
        let notificationName = Notification.Name(name)
        notification.removeObserver(any, name: notificationName, object: nil)
        notification.addObserver(any,
                                 selector: #selector(update),
                                 name: notificationName,
                                 object: nil)
    }
    
    func remove(_ any: Any,
                name: String) {
        let notificationName = Notification.Name(name)
        NotificationCenter.default.removeObserver(any, name: notificationName, object: nil)
    }
    
    func trigger(_ name: String,
                 notification: NotificationCenter = NotificationCenter.default) {
        
        let notificationName = Notification.Name(name)
        notification.post(name: notificationName, object: nil)
    }
    
    func post(with info: [String: Any],
              to name: String,
              notification: NotificationCenter = NotificationCenter.default) {
        
        let notificationName = Notification.Name(name)
        notification.post(name: notificationName, object: nil, userInfo: info)
    }
    
    func post(with object: Any,
              to name: String,
              notification: NotificationCenter = NotificationCenter.default) {
        let notificationName = Notification.Name(name)
        notification.post(name: notificationName, object: object, userInfo: nil)
    }
    
    @objc
    func update(_ object: NSNotification) {}
    
}
