//
//  ExtGradientBlue.swift
//  IPriceChecker
//
//  Created by yopa bagus on 14/02/23.
//

import Foundation
import UIKit

extension UIView {
    
    func setBackgroundBlue(color1: UIColor, color2: UIColor) {
        
       let grdientBlue = CAGradientLayer()
        grdientBlue.colors = [color1.cgColor, color2.cgColor]
        grdientBlue.startPoint = CGPoint(x: 0.0, y: 0.5)
        grdientBlue.endPoint = CGPoint(x: 1.0, y: 0.5)
        grdientBlue.frame = bounds
        
        layer.insertSublayer(grdientBlue, at: 0)
        
    }
}
