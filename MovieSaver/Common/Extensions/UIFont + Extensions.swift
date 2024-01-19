//
//  UIFont + Extensions.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit.UIFont

enum FontStyle: String {
    case bold = "Manrope-Bold"
    case light = "Manrope-Light"
    case medium = "Manrope-Medium"
    case regular = "Manrope-Regular"
}

extension UIFont {
    static func manrope(ofSize size: CGFloat, style: FontStyle) -> UIFont {
        return UIFont(name: style.rawValue, size: size) ?? .systemFont(ofSize: size)
    }
}
