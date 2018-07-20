//
//  Extensions.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

extension UIViewController {
    class func createInstance() -> UIViewController {
       return UIStoryboard(name: "Vyayamshala", bundle: Bundle.main).instantiateViewController(withIdentifier: String(describing: self))
    }
}
