//
//  EntityTestRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/04/23.
//

import Foundation

// MARK: - ParamRegister
struct ParamRegister: Codable {
    let cif, email, mobilePhone, fullName: String
    let shortName, gender, maritalStatus, placeOfBirth: String
    let dateOfBirth, residentType: String
}


struct RegisterData: Codable {
    let userInformation: UserInformation?
}

// MARK: - UserInformation
struct UserInformation: Codable {
    let id: Int
    let userProfile: UserProfile
    let fullName, shortName, gender, maritalStatus: String
    let placeOfBirth, dateOfBirth, residentType: String
    let modifiedDate: String?
}

// MARK: - UserProfile
struct UserProfile: Codable {
    let id: Int
    let cif, email, emailStatus: String
    let emailVerifiedDate: String?
    let mobilePhone, language: String
    let dateLastSuccessLogin, dateLastFailedLogin: String?
    let numFailedLogin: Int
    let status, createdDate: String
    let modifiedDate, modifiedBy, deletedDate: String?
    let deleted: Bool
}


