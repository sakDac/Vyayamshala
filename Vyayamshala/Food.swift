//
//  Food.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class Food: FoodNFitnessModel {
    
    var imageUrl = ""
    var imageTitle = ""
    var description = ""
    
    init(imageUrl : String , imagetitle : String ,description : String ) {
        self.imageUrl = imageUrl
        self.description = description
        self.imageTitle = imagetitle
    }
    
    
    
   class func getVegList() -> [FoodNFitnessModel] {
    var veg_name = [FoodNFitnessModel]()
    veg_name.append(Food(imageUrl: URLConstants.milk_products,imagetitle: "milk_products",description: VyayamshalaConstants.milk))
    veg_name.append(Food(imageUrl: URLConstants.bananas,imagetitle: "bananas",description: VyayamshalaConstants.banana))
    veg_name.append(Food(imageUrl: URLConstants.sweet_potato,imagetitle: "sweet_potato",description: VyayamshalaConstants.sweet_potato))
    veg_name.append(Food(imageUrl: URLConstants.asparagus,imagetitle: "asparagus",description: VyayamshalaConstants.asparagus))
    veg_name.append(Food(imageUrl: URLConstants.oats,imagetitle: "oats",description: VyayamshalaConstants.oats))
    veg_name.append(Food(imageUrl: URLConstants.nuts,imagetitle: "nuts",description: VyayamshalaConstants.nuts))
    veg_name.append(Food(imageUrl: URLConstants.quinoa,imagetitle: "quinoa",description: VyayamshalaConstants.quinoa))
    veg_name.append(Food(imageUrl: URLConstants.beans_and_legumes,imagetitle: "beans_and_legumes",description: VyayamshalaConstants.beans_and_legumes))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Cottage_Cheese,imagetitle: "Low Fat Cottage Cheese",description: VyayamshalaConstants.Veg_P2_Cottage_Cheese))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Yogurt,imagetitle: "Yogurt(Greek, Fat Free)",description: VyayamshalaConstants.Veg_P2_Yogurt))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Lentils,imagetitle: "Lentils(Cooked)",description: VyayamshalaConstants.Veg_P2_Lentils))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Soybeans,imagetitle: "Soybeans(Roasted)",description: VyayamshalaConstants.Veg_P2_Soybeans))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Mushrooms,imagetitle: "Mushrooms(White, cooked)",description: VyayamshalaConstants.Veg_P2_Mushrooms))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Cocoa_Powder,imagetitle: "Cocoa Powder",description: VyayamshalaConstants.Veg_P2_Cocoa_Powder))
    // veg_name.append(Food(imageUrl: URLConstants.milk_products,imagetitle: "Tempeh & Natto",description: VyayamshalaConstants.Veg_P2_Tempeh_Natto))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Parmesan_Cheese,imagetitle: "Cheese(Parmesan)",description: VyayamshalaConstants.Veg_P2_Parmesan_Cheese))
    
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_edamame,imagetitle: "Edamame",description: VyayamshalaConstants.Veg_P2_edamame))
    veg_name.append(Food(imageUrl: URLConstants.Veg_P2_Tofu,imagetitle: "Tofu",description: VyayamshalaConstants.Veg_P2_Tofu))
    
    return veg_name
    
    }
    
    
   class func getNonVegList() -> [FoodNFitnessModel] {
    
    var Non_veg = [FoodNFitnessModel]()
    Non_veg.append(Food(imageUrl:URLConstants.eggs,imagetitle: "eggs",description: VyayamshalaConstants.egg))
    Non_veg.append(Food(imageUrl: URLConstants.steak_top_or_bottom_round,imagetitle: "steak_top_or_bottom_round",description: VyayamshalaConstants.steak))
    Non_veg.append(Food(imageUrl: URLConstants.pork_chops_boneless,imagetitle: "pork_chops_boneless",description: VyayamshalaConstants.pork))
    Non_veg.append(Food(imageUrl: URLConstants.chicken_breast_boneless,imagetitle: "chicken_breast_boneless",description: VyayamshalaConstants.chicken))
    Non_veg.append(Food(imageUrl: URLConstants.turkey_breast,imagetitle: "turkey_breast",description: VyayamshalaConstants.turkey))
    Non_veg.append(Food(imageUrl: URLConstants.sockey_salmon,imagetitle: "sockey_salmon",description: VyayamshalaConstants.salmon))
    
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Turtle,imagetitle: "Turtle",description: VyayamshalaConstants.NonVeg_P2_Turtle))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Tuna,imagetitle: "Tuna",description: VyayamshalaConstants.NonVeg_P2_Tuna))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Octopus,imagetitle: "Octopus",description: VyayamshalaConstants.NonVeg_P2_Octopus))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Lobster,imagetitle: "Lobster",description: VyayamshalaConstants.NonVeg_P2_Lobster))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Swordfish,imagetitle: "Swordfish",description: VyayamshalaConstants.NonVeg_P2_Swordfish))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Frog_legs,imagetitle: "Frog_legs",description: VyayamshalaConstants.NonVeg_P2_Frog_legs))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Shrimp,imagetitle: "Shrimp",description: VyayamshalaConstants.NonVeg_P2_Shrimp))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Prawns,imagetitle: "Prawns",description: VyayamshalaConstants.NonVeg_P2_Prawns))
    Non_veg.append(Food(imageUrl: URLConstants.NonVeg_P2_Crabs,imagetitle: "Crabs",description: VyayamshalaConstants.NonVeg_P2_Crabs))
    
    return Non_veg
    }
    
}
