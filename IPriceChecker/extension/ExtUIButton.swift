//
//  ExtUIButton.swift
//  IPriceChecker
//
//  Created by yopa bagus on 14/02/23.
//

import Foundation
import UIKit

extension UIButton {
    
    func addBorder(radius: CGFloat, width: CGFloat, borderColor: CGColor) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = borderColor
     
    }
}
