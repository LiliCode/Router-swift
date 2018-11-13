//
//  Router.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Cocoa

class Router: NSObject {
    private static let _router: Router = Router()
    private var connectors: Dictionary<String, URLConnector> = Dictionary()
    
    class func sharedRouter() -> Router {
        return _router
    }
    
    func open(URL: NSURL?) -> Any? {
        if let URLObject = URL, let scheme = URLObject.scheme {
            if let connector: URLConnector = connectors[scheme] {
                if connector.willPerformURL(URL: URL) {
                    return connector.perform(URL: URL, error: nil)
                }
            } else {
                print("Router不支持这个URL的Scheme，你可以通过 registerConnector:forScheme: 方法注册\(scheme)这个Scheme")
            }
        } else {
            print("URL为空或者不合法!")
        }
        
        return nil
    }
    
    func register(Connector: URLConnector?, forScheme: String?) -> Void {
        if let connector = Connector, let scheme = forScheme {
            connectors[scheme] = connector
        } else {
            print("Connector 或者 forScheme 参数不能为空!")
        }
    }
}
