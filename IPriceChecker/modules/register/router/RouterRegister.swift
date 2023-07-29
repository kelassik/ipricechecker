//
//  RouterRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

import Foundation
import UIKit


class RouterRegister: BaseRouter {
    
    
    override func setUpView() -> ViewRegister {
        let interactor = InteractorRegister()
        let presenter = PresenterRegister(router:self, interactor: interactor)
        let view = ViewRegister(presenter: presenter)
        return view
    }
    
    func backToLogin(navigationLogin: UINavigationController){
        navigationLogin.popViewController(animated: true)
    }
    
    func navToMain(navigationMain: UINavigationController){
        let mainView = Tabbar()
        navigationMain.pushViewController(mainView, animated: true)
    }
}
