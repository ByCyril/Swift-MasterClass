//
//  ViewController.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 1/20/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

// 4 tasks: add, sub, mul, div (logic)
// 2 textfields (one for x, one for y)
// 4 buttons: add, sub, mul, div
// 1 label: results

// MVC
// Model - logic code
// View - UI code
// Controller - taking data from model, displaying it to the View -
// also works at data formatting

// Modal-View-ViewModel
// Modal is a container for your data (structs, enum, class of data)
// View is view code
// ViewModel is data formatting for the view

// Layered Architecture
// Presentation layer - UI Code/View - subsciber
// Controller layer - Controller
// Business layer - logic - publisher
// frameworks layer - generic code (converting a double to a percentage as string)

struct Modal {
    var x: Int
    var y: Int
}

class ViewController: UIViewController {

    @IBOutlet var calcView: CalcView!
    
    var calcModel = CalcViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func add() {
        let x = Int(calcView.xField.text!)!
        let y = Int(calcView.yField.text!)!
        
        let sum = calcModel.add(x, y: y)
        calcView.answerLabel.text = sum
    }
    
    @IBAction
    func sub() {
        let x = Int(calcView.xField.text!)!
        let y = Int(calcView.yField.text!)!
        
        let diff = calcModel.sub(x, y: y)
        calcView.answerLabel.text = diff
    }
    
    @IBAction
    func mul() {
        let x = Int(calcView.xField.text!)!
        let y = Int(calcView.yField.text!)!
        
        let prod = calcModel.mul(x, y: y)
        calcView.answerLabel.text = prod
    }
    
    @IBAction
    func div() {
        let x = Double(calcView.xField.text!)!
        let y = Double(calcView.yField.text!)!
        
        let quo = calcModel.div(x, y: y)
        calcView.answerLabel.text = quo
    }
}
