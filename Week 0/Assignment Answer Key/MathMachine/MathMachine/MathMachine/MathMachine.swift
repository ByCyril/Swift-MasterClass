//
//  MathMachine.swift
//  MathMachine
//
//  Created by Cyril Garcia on 1/2/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

final class MathMachine {
    
    private var commands = [Command]()
    private(set) var results: Double = 0.0
    
    public func command(_ cmd: Command) {
        commands.append(cmd)
    }
    
    public func execute() {
        for cmd in commands {
            cmd.execute()
        }
        results = Stack.peek()!
    }
}
