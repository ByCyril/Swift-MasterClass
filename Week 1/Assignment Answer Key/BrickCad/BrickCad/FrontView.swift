//
//  FrontView.swift
//  BrickCad
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class FrontView: Model {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        add(self, name: "bricks")
    }
    
    override func update(_ object: NSNotification) {
        guard let brick = object.object as? Brick else { return }
        frame.size = CGSize(width: brick.width, height: brick.height)
    }
}
