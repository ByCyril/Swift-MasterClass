//
//  EditBrickController.swift
//  BrickCad
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class EditBrickController: UIViewController {
    
    @IBOutlet var widthField: UITextField!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var lengthField: UITextField!
    
    var delegate: UpdateBrickDelegate?
    
    @IBAction func setSize() {
        let brick = Brick(length: Int(lengthField.text!)!, width: Int(widthField.text!)!, height: Int(heightField.text!)!)
        delegate?.didUpdateBrick(brick)
        navigationController?.popViewController(animated: true)
    }
}
