//
//  VerifyEmailRequest.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation
import YNetwork

extension VerifyEmailRequst: BaseApiRequest {
    // which endpoint to hit
    var path: PathRepresentable { AuthenticationEndpoints.verifyEmail }
    
    var method: HttpMethod {
        .POST
    }
    
}


