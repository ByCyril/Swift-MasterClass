//
//  ControllerOne.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

protocol ControllerDelegate {
    func dataToPass(_ somwInformation: String)
}

//recieving class - class that will get data from another class - class that will inherit the protocol
final class ControllerOne: UIViewController, ControllerDelegate {
    
    @IBAction func goToControllerTwo() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ControllerTwo") as? ControllerTwo else { return }
        
        vc.delegate = self
        
        show(vc, sender: self)
    }
    
    func dataToPass(_ somwInformation: String) {
        print("data passed",somwInformation)
    }
       
}

// where the information is coming from - source of the data
final class ControllerTwo: UIViewController {
    
    var delegate: ControllerDelegate?
    
    @IBAction func passDataBack() {
        delegate?.dataToPass("this is protocols and delegates")
    }

}
