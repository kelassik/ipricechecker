//
//  Extension+UIView.swift
//  IPriceChecker
//
//  Created by yopa bagus on 15/02/23.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {return self.cornerRadius}
        set { self.layer.cornerRadius = newValue
            
        }
    }
}
