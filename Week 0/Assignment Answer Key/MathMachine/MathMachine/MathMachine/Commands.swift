//
//  Commands.swift
//  MathMachine
//
//  Created by Cyril Garcia on 1/2/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

protocol Command {
    func execute()
}

public class Add: Command {
    func execute() {
        guard let x = Stack.pop() else { return }
        guard let y = Stack.pop() else { return }
        Stack.push(x + y)
    }
}

public class Sub: Command {
    func execute() {
        guard let x = Stack.pop() else { return }
        guard let y = Stack.pop() else { return }
        Stack.push(x - y)
    }
}

public class Mul: Command {
    func execute() {
        guard let x = Stack.pop() else { return }
        guard let y = Stack.pop() else { return }
        Stack.push(x * y)
    }
}

public class Div: Command {
    func execute() {
        guard let x = Stack.pop() else { return }
        guard let y = Stack.pop() else { return }
        Stack.push(x / y)
    }
}

public class Push: Command {
    
    private var val: Double
    init(_ val: Double) {
        self.val = val
    }
    
    func execute() {
        Stack.push(val)
    }
}
