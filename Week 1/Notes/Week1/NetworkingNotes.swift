//
//  NetworkingNote.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import UIKit

final class NetworkingNotes {
    
    func createFetchDataRequest() {
//        goals of networking
//        fetch data
//        post data
        
//        create a session
        let session = URLSession.shared
        
//        create the task
        let url = URL(string: "https://api.darksky.net/forecast/1c0405140f769f96d4b9f847107c43ee")!
        
        let task = session.dataTask(with: url) { (data, response, error) in
//            data is the actual data from the url in type Data
            if let fetchedData = data {
                let jsonObject = try! JSONSerialization.jsonObject(with: fetchedData, options: .mutableContainers) as? [String: AnyObject]
                
//                process data in the background thread
                
                DispatchQueue.main.async {
//                    use the data in the main thread - generally update your UI with fetched data
                }
                
            }
            
//            response is the actual response from the server
            if let serverResponse = response {
                
            }
            
//            error specified any network error
            
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        task.suspend()
        
        }
    
    func createPostURLRequest() {
        let session = URLSession.shared
        let url = URL(string: "https://api.darksky.net/forecast/1c0405140f769f96d4b9f847107c43ee")!

//        create url request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
//        what data to post
        let dataToPost = try! JSONSerialization.data(withJSONObject: ["latitude":"123432", "longitude": "45435324"], options: [])
        request.httpBody = dataToPost
        
        let task = session.dataTask(with: request) { (data, response, error) in
            
        }
        
        task.resume()
        task.suspend()
        
    }
    
}
