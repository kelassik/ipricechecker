//
//  PresenterTestRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/04/23.
//

import Foundation
import UIKit
import RxSwift

class PresenterTestRegister {
    
    private let router: RouterTestRegister
    private let interactor: InteractorTestRegister
    
    init(router:RouterTestRegister, interactor: InteractorTestRegister) {
        self.router = router
        self.interactor = interactor
    }
    
    
    func registration(param: ParamRegister) -> Observable<RegisterData> {
        return interactor.registration(param: param)
    }
    
}
