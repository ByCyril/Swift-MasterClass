//
//  PublisherSubscriber.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class ViewToUpdate: UIView {
 
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        NotificationCenter.default.addObserver(self, selector: #selector(update), name: Notification.Name("Some Name"), object: nil)
        
    }
    
    @objc
    func update(_ object: NSNotification) {
        let obj = object.object as? String
        let userInfo = object.userInfo?[""]
    }
}

final class PublisherView: UIView {
    
    @IBAction func postData() {
//        triggers observers - no data passed
        let name = Notification.Name("Some Name")
        NotificationCenter.default.post(.init(name: name))
        
//        triggers observers - passes single object
        NotificationCenter.default.post(name: name, object: "some data passed")
        
//        triggers observers - passes multiple objects as dictionary
        NotificationCenter.default.post(name: name, object: nil, userInfo: ["key":"value associated with key"])
    }
}
