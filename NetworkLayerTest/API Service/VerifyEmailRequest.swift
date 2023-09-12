//
//  VerifyEmailRequest.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork

extension VerifyEmailRequest: BaseApiRequest {
    // which endpoint to hit
    var path: PathRepresentable { AuthenticationEndpoints.verifyEmail }
    
    var method: HttpMethod {
        .POST
    }
}

extension GetProfileRequest: BaseApiRequest {
    // which endpoint to hit
    public var path: PathRepresentable { AuthenticationEndpoints.getProfile }
    
    public var method: HttpMethod {
        .GET
    }
}
