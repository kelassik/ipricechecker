//
//  PresenterSplash.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/02/23.
//

import Foundation
import UIKit


class PresenterSplash {
    
    private let interactor: InteractorSplash
    private let router: RouterSplash
    
    init(interactor: InteractorSplash, router: RouterSplash) {
        self.interactor = interactor
        self.router = router
    }
    
    func navigationToViewLogin(navigation: UINavigationController){
        router.navigationToViewLogin(navigation: navigation)
    }
}
