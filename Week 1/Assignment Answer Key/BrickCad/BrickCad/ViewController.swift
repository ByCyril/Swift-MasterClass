//
//  ViewController.swift
//  BrickCad
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

protocol UpdateBrickDelegate: AnyObject {
    func didUpdateBrick(_ brick: Brick)
}

class ViewController: UIViewController, UpdateBrickDelegate {
    
    let model = Model()
    
    @IBAction func startEditingBrick() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "EditBrickController") as? EditBrickController else { return }
        vc.delegate = self
        
        show(vc, sender: self)
    }
    
    func didUpdateBrick(_ brick: Brick) {
        model.post(with: brick, to: "bricks")
     }
     

}

