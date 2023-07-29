//
//  Tabbar.swift
//  IPriceChecker
//
//  Created by yopa bagus on 24/02/23.
//

import Foundation
import UIKit


class Tabbar: UITabBarController {
    
    let firstVC = RouterMain().setUpView()
    let secondVC = ViewProductUser()
    let thirdVC = ViewProfile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        firstVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        secondVC.tabBarItem = UITabBarItem(title: "Product", image: UIImage(named: "add"), selectedImage: UIImage(named: "add"))
        thirdVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "user"), selectedImage: UIImage(named: "user"))
        
        viewControllers = [firstVC, secondVC, thirdVC]
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }

        var tabFrame = tabBar.frame
        tabFrame.size.height = 100
        tabFrame.origin.y = view.frame.size.height - 100
        tabBar.frame = tabFrame
    }
}

extension Tabbar: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Handle tab bar selection
    }
}

