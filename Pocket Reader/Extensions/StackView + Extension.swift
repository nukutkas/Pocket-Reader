//
//  StackView + Extension.swift
//  Pocket Reader
//
//  Created by Татьяна Кочетова on 25.06.2021.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
