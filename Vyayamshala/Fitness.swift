//
//  Fitness.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class Fitness: FoodNFitnessModel {
    
    var imageUrl = ""
    var imageTitle = ""
    var description = ""
    
    init(imageUrl : String , imagetitle : String ,description : String ) {
        self.imageUrl = imageUrl
        self.description = description
        self.imageTitle = imagetitle
    }
    
   class func getMaleList() -> [FoodNFitnessModel]{
        
    var male = [FoodNFitnessModel]()

    male.append(Fitness(imageUrl:URLConstantsMale.Male_Bench_Press_Medium_Grip,imagetitle: "Bench Press",description: VyayamshalaConstants.Male_Bench_Press_Medium_Grip))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Standing_Dumbell_Press,imagetitle: "Standing Dumbell Press",description: VyayamshalaConstants.Male_Standing_Dumbell_Press))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Seated_Dumbell_Press,imagetitle: "Seated Dumbell Press",description: VyayamshalaConstants.Male_Seated_Dumbell_Press))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Lying_Leg_Curls,imagetitle: "Lying Leg Curls",description: VyayamshalaConstants.Male_Lying_Leg_Curls))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Dip_Machine,imagetitle: "Dip Machine",description: VyayamshalaConstants.Male_Dip_Machine))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Ab_crunches,imagetitle: "Ab crunches",description: VyayamshalaConstants.Male_Ab_crunches))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_T_Bar_Row,imagetitle: "T Bar Row",description: VyayamshalaConstants.Male_T_Bar_Row))
    male.append(Fitness(imageUrl: URLConstantsMale.Male_Leg_Press,imagetitle: "Leg Press",description: VyayamshalaConstants.Male_Leg_Press))
    
    //======= Phase 2
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Push_up,imagetitle: "Push up",description: VyayamshalaConstants.Male_P2_Push_up))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Rear_raises,imagetitle: "Rear raises",description: VyayamshalaConstants.Male_P2_Rear_raises))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Side_raises,imagetitle: "Side Raises",description: VyayamshalaConstants.Male_P2_Side_raises))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Arnold_press,imagetitle: "Arnold press",description: VyayamshalaConstants.Male_P2_Arnold_press))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Front_Raises,imagetitle: "Front raises",description: VyayamshalaConstants.Male_P2_Front_Raises))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Chest_fly_machine,imagetitle: "Chest fly machine",description: VyayamshalaConstants.Male_P2_Chest_fly_machine))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Dumbell_bench_press,imagetitle: "Dumbell bench press",description: VyayamshalaConstants.Male_P2_Dumbell_bench_press))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_incline_dumbell_press,imagetitle: "Incline dumbell press",description: VyayamshalaConstants.Male_P2_incline_dumbell_press))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Machine_shoulder_press,imagetitle: "Machine shoulder press",description: VyayamshalaConstants.Male_P2_Machine_shoulder_press))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_cable_trapezius_upright_row,imagetitle: "Cable trapezius upright row",description: VyayamshalaConstants.Male_P2_cable_trapezius_upright_row))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_Dumbell_incline_lateral_raises,imagetitle: "Dumbell incline lateral raises",description: VyayamshalaConstants.Male_P2_Dumbell_incline_lateral_raises))
    
    male.append(Fitness(imageUrl: URLConstantsMale.Male_P2_MACHINE_REAR_DELTOID_LATERALS,imagetitle: "Machine rear deltoid Laterals",description: VyayamshalaConstants.Male_P2_MACHINE_REAR_DELTOID_LATERALS))

    return male
    }
    
    
    
    
    
    
    
    class func getFemaleList() -> [FoodNFitnessModel] {
        
        var female = [FoodNFitnessModel]()
        
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Bridge,imagetitle: "Bridge",description: VyayamshalaConstants.Female_Bridge))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Pushup,imagetitle: "Pushup",description: VyayamshalaConstants.Female_Pushup))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Stepups,imagetitle: "Stepups",description: VyayamshalaConstants.Female_Stepups))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Side_Plank,imagetitle: "Side_Plank",description: VyayamshalaConstants.Female_Side_Plank))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Russian_Twist,imagetitle: "Russian Twist",description: VyayamshalaConstants.Female_Russian_Twist))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Shoulder_Stand,imagetitle: "Shoulder Stand",description: VyayamshalaConstants.Female_Shoulder_Stand))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Kneeling_Pushup,imagetitle: "Kneeling Pushup",description: VyayamshalaConstants.Female_Kneeling_Pushup))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Cardio_Intervals,imagetitle: "Cardio Intervals",description: VyayamshalaConstants.Female_Cardio_Intervals))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Dumbbell_Deadlift,imagetitle: "Dumbbell Deadlift",description: VyayamshalaConstants.Female_Dumbbell_Deadlift))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Triceps_Extension,imagetitle: "Triceps Extension",description: VyayamshalaConstants.Female_Triceps_Extension))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Superman_from_Floor,imagetitle: "Floor Superman",description: VyayamshalaConstants.Female_Superman_from_Floor))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Alternating_Dumbbell_Lying_Triceps_Extension,imagetitle: "Alternate Lying Triceps",description: VyayamshalaConstants.Female_Alternating_Dumbbell_Lying_Triceps_Extension))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Swiss_Ball_Hip_Raise_and_Leg_Curl,imagetitle: "Ball Hip Raise Leg Curl",description: VyayamshalaConstants.Female_Swiss_Ball_Hip_Raise_and_Leg_Curl))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Reverse_Dumbbell_Diagonal_Lunge,imagetitle: "Reverse Diagonal Lunge",description: VyayamshalaConstants.Female_Reverse_Dumbbell_Diagonal_Lunge))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Dumbbell_Reverse_Lunge,imagetitle: "Reverse Lunge",description: VyayamshalaConstants.Female_Dumbbell_Reverse_Lunge))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Second_Position_Plies,imagetitle: "Second Position Plies",description: VyayamshalaConstants.Female_Second_Position_Plies))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Plank_with_Arm_Raise,imagetitle: "Plank Arm_Raise",description: VyayamshalaConstants.Female_Plank_with_Arm_Raise))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Dumbbell_Hammer_Curl,imagetitle: "Hammer Curl",description: VyayamshalaConstants.Female_Dumbbell_Hammer_Curl))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Single_Leg_Deadlift,imagetitle: "Single Leg Deadlift",description: VyayamshalaConstants.Female_Single_Leg_Deadlift))
        female.append(Fitness(imageUrl: URLConstantsFemale.Female_Dumbbell_Side_Lunge,imagetitle: "Side Lunge",description: VyayamshalaConstants.Female_Dumbbell_Side_Lunge))
        
        return female
    }
    
    
}
