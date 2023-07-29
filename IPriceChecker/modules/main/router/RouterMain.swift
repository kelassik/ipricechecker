//
//  RouterMain.swift
//  IPriceChecker
//
//  Created by yopa bagus on 20/02/23.
//

import Foundation
import UIKit

class RouterMain: BaseRouter {
    
    
    override func setUpView() -> ViewMain {
        let interactor = InteractorMain()
        let presenter = PresenterMain(router: self, interactor: interactor)
        let view = ViewMain(presenter: presenter)
        return view
    }
}
