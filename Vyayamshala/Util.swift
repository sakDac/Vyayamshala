//
//  Util.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class Util {
    /*
     cell.layer.shadowOffset = CGSizeMake(0, 0)
     cell.layer.shadowColor = UIColor.blackColor().CGColor
     cell.layer.shadowOpacity = 0.23
     cell.layer.shadowRadius = 4
     */
    
    class func addShadow(view: UIView) {
        let layer = view.layer
        layer.shadowRadius = 10
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.80
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
