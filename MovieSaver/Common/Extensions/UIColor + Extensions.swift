//
//  UIColor + Extensions.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit.UIColor

extension UIColor {
    static var bgMainColor: UIColor {
        return UIColor(named: "backgroundMainScreen") ?? .white
    }
    
    static var defaultBlueColor: UIColor {
        return UIColor(named: "defaultBlue") ?? .systemBlue
    }
    
    static var movieCellColor: UIColor {
        return UIColor(named: "movieCell") ?? .lightGray
    }
    
    static var subtitleTextColor: UIColor {
        return UIColor(named: "subtitleText") ?? .systemBlue
    }
    
    static var hintTextColor: UIColor {
        return UIColor(named: "hintText") ?? .lightGray
    }
}

