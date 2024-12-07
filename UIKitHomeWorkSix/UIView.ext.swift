//
//  UIView.ext.swift
//  UIKitHomeWorkSix
//
//  Created by Масуд Гаджиев on 03.12.2024.
//

import UIKit
extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
