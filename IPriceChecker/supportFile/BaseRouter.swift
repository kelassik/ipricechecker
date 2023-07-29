//
//  BaseRouter.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/02/23.
//

import Foundation
import UIKit

protocol Cordinator {
    
    var parentNavigation: UINavigationController? {get}
    var parent: UIWindow? {get}
    func setUpView() -> UIViewController
}

class BaseRouter: Cordinator {
    var parentNavigation: UINavigationController?
    var currentNavigation: UINavigationController?
    var parent: UIWindow?
    
    
    init(_ parentNavigation: UINavigationController? = nil, parent: UIWindow? = nil){
        self.parentNavigation = parentNavigation
        self.parent = parent
    }
    
    
    func setUpView() -> UIViewController {
        fatalError("somthing happened")
    }
    
    func start() {}
    func close() {}
}
