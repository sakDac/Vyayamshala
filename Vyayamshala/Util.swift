//
//  Util.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class Util {
    
    class func addShadow(view: UIView) {
        let layer = view.layer
        layer.shadowRadius = 5
        layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        layer.shadowOpacity = 0.80
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
