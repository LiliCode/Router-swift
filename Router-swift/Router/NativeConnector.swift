//
//  NativeConnector.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Cocoa

class NativeConnector: NSObject, URLConnector {
    
    func willPerformURL(URL: NSURL?) -> Bool {
        return true
    }
    
    func perform(URL: NSURL?, error: Error?) -> Any? {
        print("NativeConnector")
        return nil
    }
    
    func perform(target: String, action: String, parameter: Dictionary<String, Any>, error: Error) -> Any? {
        return nil
    }
}
