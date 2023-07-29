//
//  NetworkManager.swift
//  IPriceChecker
//
//  Created by yopa bagus on 07/04/23.
//

import Foundation
import RxAlamofire
import Alamofire
import RxSwift

enum ErrorHandler: Error {
    case unauthorized
    case unknownerror
}


class ApiManager {
    
    private static let session: Session = {
        let session = Session()
        return session
    }()
    
    func requestAPI<T: Codable>(endpoint: Endpoint, timeout: TimeInterval = 60) -> Observable<T> {
        return Observable.create { observer in
            ApiManager.session.request(
                endpoint.urlString(),
                method: endpoint.methode(),
                parameters: endpoint.parameters,
                encoding: JSONEncoding.default,
                headers: endpoint.headers,
                interceptor: nil,
                requestModifier: { $0.timeoutInterval = timeout })
            .rx
            .responseData()
            .observe(on: MainScheduler.instance)
            .map { $0.1 }
            .decode(type: T.self, decoder: JSONDecoder())
            .subscribe { data in
                observer.onNext(data)
                observer.onCompleted()
            } onError: { error in
                print(error.localizedDescription)
                observer.onError(error)
            }
        }
    }
    
}
