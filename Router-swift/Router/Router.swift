//
//  Router.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Cocoa

class Router: NSObject {
    static let _router: Router = Router()
    var connectors: Dictionary<String, Any> = Dictionary()
    
    class func sharedRouter() -> Router {
        return _router
    }
    
    func open(URL: NSURL) -> Any? {
        
        return nil
    }
    
    func register(Connector: URLConnector, forScheme: String) -> Void {
        
    }
}
