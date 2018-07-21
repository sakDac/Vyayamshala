//
//  GymAlternatives.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class GymAlternatives: Model  {
    
    var entity: String?
    var description: String?
    
    init(entity : String , description : String) {
        self.entity = entity
        self.description = description
    }
    
   class func getData() -> [GymAlternatives] {
        
        var list = [GymAlternatives]()
        
        list.append(GymAlternatives(entity: "Walk",description: VyayamshalaConstants.walk))

        list.append(GymAlternatives(entity: "Dance",description: VyayamshalaConstants.dance))

        list.append(GymAlternatives(entity: "Take the Stairs",description: VyayamshalaConstants.take_stairs))

        list.append(GymAlternatives(entity: "Work out with youtube",description: VyayamshalaConstants.youtube))

        list.append(GymAlternatives(entity: "Weight the beans",description: VyayamshalaConstants.Weigth_the_beans))

        list.append(GymAlternatives(entity: "Do the house work",description: VyayamshalaConstants.house_work))

        list.append(GymAlternatives(entity: "Hula hoops",description: VyayamshalaConstants.hula_hoops))

        list.append(GymAlternatives(entity: "Gardening",description: VyayamshalaConstants.work_in_garder))

        list.append(GymAlternatives(entity: "Go for Swim",description: VyayamshalaConstants.swim))

        list.append(GymAlternatives(entity: "Tv Commercials",description: VyayamshalaConstants.tv_commercials))

        list.append(GymAlternatives(entity: "Run Stairs",description: VyayamshalaConstants.run_staires))

        list.append(GymAlternatives(entity: "Bike to work",description: VyayamshalaConstants.bike_to_work))
        
        return list
    }
}
