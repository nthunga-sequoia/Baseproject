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

struct VerifyEmailRequest: Encodable {
    let email: String
}

/// Get profile model

public struct GetProfileRequest: Encodable {
    
}

public struct UserProfileResponse: Codable {
    let data: DataInfo
    let success: Bool
    let timestamp: Int
}

// MARK: - DataClass
public struct DataInfo: Codable {
    let displayName: String
    let imageURL: String
    let aboutMe, title, dob, userRole: String
    let userID: Int
    let userObjID, sfdcContactID, sfdcAccountID, firstName: String
    let lastName, email, marketTeam, lob: String
    let accountName, accountType: String
    let companyID: Int
    let pxRole, orgID, employeeID: String

    enum CodingKeys: String, CodingKey {
        case displayName
        case imageURL = "imageUrl"
        case aboutMe, title, dob, userRole
        case userID = "userId"
        case userObjID = "userObjId"
        case sfdcContactID = "sfdcContactId"
        case sfdcAccountID = "sfdcAccountId"
        case firstName, lastName, email, marketTeam, lob, accountName, accountType
        case companyID = "companyId"
        case pxRole
        case orgID = "orgId"
        case employeeID = "employeeId"
    }
}

