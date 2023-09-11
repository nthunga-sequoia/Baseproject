//
//  VerifyEmail.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 11/09/23.
//

import Foundation

struct VerifyEmailResponse: Codable {
    let data: DataObject
    let success: Bool
}

struct DataObject: Codable {
    let signupToken: String
    let isSignedUp: Bool
    let status: String
    let userId: Int
    let userType: String
    let isActivated: Bool
    let lob, email, contactType: String
    let isSsoEnabled: Bool
    let companyLogo: String
    let iconUrl: String
}

struct VerifyEmailRequst: Encodable {
    let email: String
}
