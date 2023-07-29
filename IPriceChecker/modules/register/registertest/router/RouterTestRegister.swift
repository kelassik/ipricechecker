//
//  RouterTestRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/04/23.
//

import Foundation
import UIKit

class RouterTestRegister: BaseRouter {
    
    override func setUpView() -> ViewTestRegister {
        let interactor = InteractorTestRegister()
        let presenter = PresenterTestRegister(router:self, interactor:interactor)
        let view = ViewTestRegister(presenter: presenter)
        return view
    }
}
