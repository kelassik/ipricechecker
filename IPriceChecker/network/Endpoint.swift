//
//  Endpoint.swift
//  IPriceChecker
//
//  Created by yopa bagus on 07/04/23.
//

import Foundation
import RxAlamofire
import Alamofire



struct ParamLogin {
    let name: String
    let password: String
}

enum Endpoint {
    case getuser(Int)
    case register(params: ParamRegister)
    case login(params: ParamLogin)
    
    func path() -> String {
        switch self {
        case .getuser(let id):
            return "/users/\(id)"
        case .register:
            return "/generalservice/v1/user/registration"
            
        case .login:
            return "/login"
            
        }
    }
    
    func methode() -> HTTPMethod {
        switch self {
        case .getuser:
            return .get
        case .register, .login:
            return .post
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .getuser:
            return [:]
        case .register( let params):
            let params: [String: Any] = [
                "cif": params.cif,
                "email": params.email,
                "mobilePhone": params.mobilePhone,
                "fullName": params.fullName,
                "shortName": params.shortName,
                "gender": params.gender,
                "maritalStatus": params.maritalStatus,
                "placeOfBirth": params.placeOfBirth,
                "dateOfBirth": params.dateOfBirth,
                "residentType": params.residentType
            ]
            return params
        case .login( let params):
            let params: [String: Any] = [
                "username": params.name,
                "password": params.password
            ]
            return params
            
        }
    }
    
    var headers: HTTPHeaders {
        switch self {
        case .login, .register, .getuser:
            let header: HTTPHeaders = [
                "Content-Type" : "application/json"
            ]
            return header
        }
    }
    
    func urlString() -> String {
        return BaseConstant.baseURL + self.path()
    }
    
    
}

struct BaseConstant {
    static let baseURL = "http://localhost:8080/api"
    
}


