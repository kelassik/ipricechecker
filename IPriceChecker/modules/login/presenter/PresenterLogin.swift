//
//  PresenterLogin.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

import Foundation
import UIKit

class PresenterLogin {
    
    private let router: RouterLogin
    private let interactor: InteractorLogin
    
    init(router: RouterLogin, interactor: InteractorLogin) {
        self.router = router
        self.interactor = interactor
    }
    
    func registerPress(navigationRegister: UINavigationController){
        router.registerPress(navigationRegister: navigationRegister)
    }
}
