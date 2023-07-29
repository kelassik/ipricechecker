//
//  RouterLogin.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

//connect interactor, presenter, view

import Foundation
import UIKit


class RouterLogin: BaseRouter {
    
    override func setUpView() -> ViewLogin {
        let interactor = InteractorLogin()
        let presenter = PresenterLogin(router: self, interactor: interactor)
        let view = ViewLogin(presenter: presenter)
        self.currentNavigation = view.navigationController
        return view
    }
    
    
    func registerPress(navigationRegister: UINavigationController) {
        let regVC = RouterRegister().setUpView()
        navigationRegister.pushViewController(regVC, animated: true)
    }
}
