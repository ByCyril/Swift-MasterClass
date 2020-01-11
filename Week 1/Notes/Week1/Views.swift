//
//  ViewOne.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

// observers inherits the model
class ViewOne: Model {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        add(self, name: "ViewOne")
    }
    
    override func update(_ object: NSNotification) {
        guard let obj = object.object as? String else { return }
        print("debugging this", obj)
    }
    
}

class Publisher {
    
    @IBAction func postSomeData() {
        let model = Model()
        model.post("some object", to: "ViewOne")
    }
}
