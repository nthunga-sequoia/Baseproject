//
//  BaseApiRequest.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork
public typealias Headers = [String: String]

enum APIBasePath: String, PathRepresentable {
    case prod = "https://hrx-backend.sequoia.com"
    case dev = "https://hrx-backend-dev.sequoia-development.com"
    case staging = "https://hrx-backend.sequoia.com/"
    case mock = "https://hrx-backend.sequoia.com/mock"
}

extension APIBasePath {
    static var current: APIBasePath = .prod
}

