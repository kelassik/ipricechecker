//
//  PresenterMain.swift
//  IPriceChecker
//
//  Created by yopa bagus on 20/02/23.
//

import Foundation
import UIKit

class PresenterMain {
    
    private let router: RouterMain
    private let interactor: InteractorMain
    
    init(router: RouterMain, interactor: InteractorMain) {
        self.router = router
        self.interactor = interactor
    }
}
