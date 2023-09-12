//
//  BaseApiRequest.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork

protocol BaseApiRequest: NetworkRequest { }

extension BaseApiRequest {
    // All requests sharing the same base path
    public var basePath: PathRepresentable? { APIBasePath.current }
    
    public var headers: HttpHeaders? {
        var headers: Headers = [:]
        headers["Content-Type"] = "application/json"
        headers["appVersionNumber"] = "6.9.0"
        headers["deviceUUId"] = "79DA48BD-23FA-4713-B6F0-59FB6812AAD8"
        headers["deviceName"] = "Simulator"
        headers["deviceTypeId"] = "2"
        headers["buildNumber"] = "1160"
        headers["locale-timezone"] = "Asia/Kolkata"
        headers["deviceOSVersion"] = "16.4"
        headers["agent"] = "client"
        headers["apiToken"] = "8a61cc9b-2b8a-4efb-9bf4-9e78157f933c"
        headers["token"] = "8a61cc9b-2b8a-4efb-9bf4-9e78157f933c"
        return headers
    }
}
