//
//  HomeModel.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class HomeModel {
    
    var name = ""
    var image = ""
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
   class func getData() -> [HomeModel] {
    var list = [HomeModel]()
    list.append(HomeModel(name: VyayamshalaConstants.PEOPLE_AND_STORIES, image: ""))
    list.append(HomeModel(name: VyayamshalaConstants.GYM_ATERNATIVES, image: ""))
    list.append(HomeModel(name: VyayamshalaConstants.HOME_REMEDIES, image: ""))
    list.append(HomeModel(name: VyayamshalaConstants.FITNESS, image: ""))
    list.append(HomeModel(name: VyayamshalaConstants.FOOD, image: ""))
    return list
    }
}
