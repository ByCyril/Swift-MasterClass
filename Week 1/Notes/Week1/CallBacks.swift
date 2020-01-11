//
//  CallBack.swift
//  Week1
//
//  Created by Cyril Garcia on 1/11/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

import Foundation

final class CallBacks {
    
    func downloadSomeData(_ completionBlock: @escaping (_ downloadedData: String) -> Void) {
        
//        do all stuff
//        at the end, call the completionBlock method
//        completionBlock("Here is the data")
        
        
//to run in background thread,, call DispatchQueue.global run on background
        DispatchQueue.global(qos: .background).async {
            sleep(5)
            completionBlock("Here is the data")
        }
        
    }
    
    let someObj = ""
    
    func toUseBlock() {
        
        downloadSomeData { [unowned self] (results) in
//            happening in different place
//            when referencing objects outside of callBack, you are creating a strong reference
//            to the self keyword
            
            print(self.someObj)
        }
        
        
    }
}
