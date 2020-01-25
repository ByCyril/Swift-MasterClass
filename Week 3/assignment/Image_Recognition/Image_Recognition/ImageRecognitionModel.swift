//
//  ImageRecognitionModel.swift
//  Object_Detection_iOS
//
//  Created by Cyril Garcia on 3/21/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import UIKit
import Vision

protocol ImageRecognitionDelegate {
    func getResults(_ label: String, _ confidenceLevel: Double)
}

class ImageRecognitionModel {
    
    private var vnCoreMlModel: VNCoreMLModel?
    public var delegate: ImageRecognitionDelegate!
    
    init(_ mlModel: MLModel) {
        do {
            self.vnCoreMlModel = try VNCoreMLModel(for: mlModel)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    public func classify(image: UIImage) {
        guard let cgimage = image.cgImage else { return }
        guard let model = vnCoreMlModel else { return }
        
        let request = VNCoreMLRequest(model: model) { (vnRequest, error) in
            
            guard let results = vnRequest.results as? [VNClassificationObservation] else { return }
            guard let resultsLabel = results.first else { return }
            
            let label = resultsLabel.identifier
            let confidenceLevel = Double(resultsLabel.confidence)
            
            DispatchQueue.main.async { [weak self] in
                if confidenceLevel > 0.6 {
                    self?.delegate.getResults(label, confidenceLevel)
                } else {
                    self?.delegate.getResults("Maybe: \(label)?", confidenceLevel)
                }
            }
            
        }
        
        do {
            try VNImageRequestHandler(cgImage: cgimage, options: [:]).perform([request])
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
