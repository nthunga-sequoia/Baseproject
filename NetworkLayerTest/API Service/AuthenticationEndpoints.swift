//
//  AuthenticationEndpoints.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork

enum AuthenticationEndpoints {
    case verifyEmail
}

extension AuthenticationEndpoints: PathRepresentable {
    var pathValue: String {
        switch self {
        case .verifyEmail:
            return "/idm/v1/contacts/verify-email"
        }
    }
}
