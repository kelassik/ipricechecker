//
//  ExtUIView.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

import Foundation
import UIKit

extension UIView {
    
    func addRoundedBorder(_ cornerRadius: CGFloat, _ colorLine: CGColor, _ thickness: CGFloat){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = colorLine
        self.layer.borderWidth = thickness
    }
}
