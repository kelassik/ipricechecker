//
//  RouterSplash.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/02/23.
//

//init window, get navigation and etup parent coz first view
//connect interactor, presenter, view

import Foundation
import UIKit

class RouterSplash: BaseRouter {
    
   init(parent: UIWindow? = nil) {
       super.init(parent: parent)
    }
    
    override func setUpView() -> ViewSplash {
        let interactor = InteractorSplash()
        let presenter = PresenterSplash(interactor: interactor, router: self)
        let view = ViewSplash(presenter: presenter)
        self.currentNavigation = view.navigationController
        return view
    }
    
    override func start() {
        let vc = self.setUpView()
        let navigationControl = UINavigationController(rootViewController: vc)
        self.currentNavigation = navigationControl
        self.parent?.rootViewController = navigationControl
        self.parent?.makeKeyAndVisible()
    
    }
    
    func navigationToViewLogin(navigation: UINavigationController) {
        let vc = RouterLogin().setUpView()
        navigation.pushViewController(vc, animated: true)
    }
}
