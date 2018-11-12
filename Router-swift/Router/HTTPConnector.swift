//
//  HTTPConnector.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Cocoa

class HTTPConnector: NSObject, URLConnector {
    
    func willPerformURL(URL: NSURL) -> Bool {
        return true
    }
    
    func perform(URL: NSURL, error: Error) -> Any? {
        return nil
    }
}
