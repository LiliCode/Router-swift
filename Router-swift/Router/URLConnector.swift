//
//  URLConnector.swift
//  Router-swift
//
//  Created by 唯赢 on 2018/11/12.
//  Copyright © 2018 李立. All rights reserved.
//

import Foundation

protocol URLConnector {
    func willPerformURL(URL: NSURL) -> Bool
    func perform(URL: NSURL, error: Error) -> Any?
}
