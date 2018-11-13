//
//  main.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Foundation

// 创建router 和 连接器
let router: Router = Router.sharedRouter()
let nativeConnector = NativeConnector()
let httpConnector = HTTPConnector()

// 注册connector
router.register(Connector: httpConnector, forScheme: "http")
router.register(Connector: httpConnector, forScheme: "https")
router.register(Connector: nativeConnector, forScheme: "app")

// open
// http or https
if let controller = router.open(URL: NSURL(string: "http://www.aiyuke.com")!) {
    print("controller = \(controller)")
} else {
    print("controller is nil")
}

// native
if let controller = router.open(URL: NSURL(string: "app://user/detail?uid=10086")!) {
    print("controller = \(controller)")
} else {
    print("controller is nil")
}

