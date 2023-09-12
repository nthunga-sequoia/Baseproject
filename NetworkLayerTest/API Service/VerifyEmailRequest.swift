//
//  VerifyEmailRequest.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork

struct VerifyEmail: Encodable, BodyBuilder {
    let email: String
}

struct VerifyEmailRequest {
    let item: VerifyEmail
}

extension VerifyEmailRequest: BaseApiRequest {
    // which endpoint to hit
    var path: PathRepresentable { AuthenticationEndpoints.verifyEmail }
    
    var method: HttpMethod {
        .POST
    }
    
    var body: BodyBuilder? {
        item
    }
}

extension GetProfileRequest: BaseApiRequest {
    // which endpoint to hit
    public var path: PathRepresentable { AuthenticationEndpoints.getProfile }
    
    public var method: HttpMethod {
        .GET
    }
}
