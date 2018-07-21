//
//  HomeRemedy.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class HomeRemedy: Model {
    
    var entity: String?
    var description: String?
    
    init(entity : String , description : String) {
        self.entity = entity
        self.description = description
    }
    
   class func getData() -> [HomeRemedy] {
        
        var list = [HomeRemedy]()
        
        list.append(HomeRemedy(entity: "Drink Water",description: VyayamshalaConstants.Drink_Water))
        
        list.append(HomeRemedy(entity: "Green tea",description: VyayamshalaConstants.Green_tea))
        
        list.append(HomeRemedy(entity: "Liquid Colloidal Minerals",description: VyayamshalaConstants.Liquid_Colloidal_Minerals))
        
        list.append(HomeRemedy(entity: "Eat fibre",description: VyayamshalaConstants.Eat_fibre))
        
        list.append(HomeRemedy(entity: "Take calcium supplements",description: VyayamshalaConstants.Take_calcium_supplements))
        
        list.append(HomeRemedy(entity: "Lemon and black pepper",description: VyayamshalaConstants.Lemon_and_black_pepper))
        
        list.append(HomeRemedy(entity: "Ginseng",description: VyayamshalaConstants.Ginseng))
        
        list.append(HomeRemedy(entity: "Coconut oil",description: VyayamshalaConstants.Coconut_oil))
        
        list.append(HomeRemedy(entity: "Iodine",description: VyayamshalaConstants.Iodine))
        
        list.append(HomeRemedy(entity: "Quality protein Intake",description: VyayamshalaConstants.Quality_protein_Intake))
        
        list.append(HomeRemedy(entity: "Moderate carbohyderate Intake",description: VyayamshalaConstants.Moderate_carbohyderate_Intake))
        
        list.append(HomeRemedy(entity: "Avoid Sugar",description: VyayamshalaConstants.Avoid_Sugar))
        
        list.append(HomeRemedy(entity: "Eat regularly",description: VyayamshalaConstants.Eat_regularly))
        
        list.append(HomeRemedy(entity: "Never leave house hungry",description: VyayamshalaConstants.Never_leave_house_hungry))
        
        list.append(HomeRemedy(entity: "Aleo vera",description: VyayamshalaConstants.Aleo_vera))
        
        list.append(HomeRemedy(entity: "Curry leaves",description: VyayamshalaConstants.Curry_leaves))
        
        list.append(HomeRemedy(entity: "Rose petal Water",description: VyayamshalaConstants.Rose_petal_Water))
        
        list.append(HomeRemedy(entity: "Chewing gum",description: VyayamshalaConstants.Chewing_gum))
        
        list.append(HomeRemedy(entity: "Get enough Sleep",description: VyayamshalaConstants.Get_enough_Sleep))
        
        list.append(HomeRemedy(entity: "Black pepper And Lemon juice",description: VyayamshalaConstants.Black_pepper_lemon))
        
        list.append(HomeRemedy(entity: "Apple Snacks",description: VyayamshalaConstants.Apple_Snacks))
        
        return list
        
    }
}
