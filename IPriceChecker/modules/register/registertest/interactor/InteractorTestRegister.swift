//
//  InteractorTestRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/04/23.
//

import Foundation
import RxSwift

class InteractorTestRegister: BaseInteractor {
    
    func registration(param: ParamRegister)  -> Observable<RegisterData> {
        api.requestAPI(endpoint: .register(params: param))
    }
}
