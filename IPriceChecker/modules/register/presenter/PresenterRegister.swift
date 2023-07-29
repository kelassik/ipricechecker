//
//  PresenterRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

import Foundation
import UIKit

class PresenterRegister {
    
    private let router: RouterRegister
    private let interactor: InteractorRegister
    
    init(router: RouterRegister, interactor: InteractorRegister) {
        self.router = router
        self.interactor = interactor
    }
    
    func backToLogin(navigationLogin: UINavigationController){
        router.backToLogin(navigationLogin: navigationLogin)
    }
    
    func navToMain(navigationToMain: UINavigationController){
        router.navToMain(navigationMain: navigationToMain)
    }
}
