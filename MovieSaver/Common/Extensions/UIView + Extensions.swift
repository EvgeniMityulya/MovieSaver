//
//  UIView + Extensions.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit.UIView

extension UIView {
    func addSubview(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}
