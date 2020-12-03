//
//  UIViewExtensions.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 2/12/20.
//

import UIKit

extension UIView {
    
    func configure(cornerRadius: CGFloat = 4.0,
                   shadowOpacity: Float = 0.7,
                   with shadowColor: UIColor = UIColor.gray) {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 4.0
        layer.shadowOpacity = shadowOpacity
    }
    
}
