//
//  FitnessViewCollectionController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 04/02/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit


class FitnessViewCollectionController: UICollectionViewController {

    
    let leftAndRightPadding : CGFloat = 32.0
    let noOfItemsPerRow : CGFloat = 2.0
    let heightAdjustment : CGFloat = 32.0
    
    let MALE = 0
    let VEG = 0
    
    var selectedType = 0
    
    var fitnessOrFood = ""

    var male = [ImageDescription]()
    
    var female = [ImageDescription]()
    
    var veg_name = [ImageDescription]()
    
    var Non_veg = [ImageDescription]()

    
    func formDataModel()  {
        
        maleDataConstruct()
        
        femaleDataConstruct()
    }
    
    @IBOutlet weak var segmentControllOutlet: UISegmentedControl!
    
    
    @IBAction func segmentControllAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            selectedType = 0
        }else{
            selectedType = 1
        }
            self.collectionView?.reloadData()
        
        if (self.collectionView?.scrollsToTop)! {
            self.collectionView?.scrollToItem(at: IndexPath(row: 0, section: 0),
                                              at: .top,
                                              animated: true)
        }
    }
    
    var index = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControllOutlet.tintColor = UIColor.black
        formDataModel()
        let width =  ((collectionView?.frame)!.width - leftAndRightPadding ) / noOfItemsPerRow
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: width, height: width+heightAdjustment)
        
        // Add some Index Here.
        //index =  GenericDrawerViewController.getCurrentIndexName()
        
        if index == VyayamshalaConstants.FOOD{
            segmentControllOutlet.setTitle("VEG", forSegmentAt: 0)
            segmentControllOutlet.setTitle("Non-VEG", forSegmentAt: 1)
        }
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getItemCountInSection()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sakCell", for: indexPath) as! FitnessCollectionViewCell
        var str = ""
        var imagestr = ""
        
        if index == VyayamshalaConstants.FOOD{
            
            if selectedType == VEG{
                str = veg_name[indexPath.row].imageTitle
                imagestr = veg_name[indexPath.row].imageName
                
            }else{
                str = Non_veg[indexPath.row].imageTitle
                imagestr = Non_veg[indexPath.row].imageName
            }
            
        }else{
        
            if selectedType == MALE{
                str = male[indexPath.row].imageTitle
                imagestr = male[indexPath.row].imageName
            }else{
                str = female[indexPath.row].imageTitle
                imagestr = female[indexPath.row].imageName
            }
        
        }
        cell.excerciseName.text = str
        cell.excerciseImage.sd_setImage(with: URL(string: imagestr))
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        
        // adding initial state...
        
        cell.alpha = 0
        var translationIndex = 0
            if (indexPath.row % 2) == 0 {
                translationIndex = -250
            }else{
                translationIndex = 250
            }
        let  translate = CATransform3DTranslate(CATransform3DIdentity, CGFloat(translationIndex),0, 0)
        cell.layer.transform = translate
        
        // adding final state...
        UIView.animate(withDuration: 0.40) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var str = ""
        var imagestr = ""
        
        if index == VyayamshalaConstants.FOOD{
            
            if selectedType == 0{
                str = veg_name[indexPath.row].description
                imagestr = veg_name[indexPath.row].imageName
                
            }else{
                str = Non_veg[indexPath.row].description
                imagestr = Non_veg[indexPath.row].imageName
            }
            
        }else{
            
            if selectedType == 0{
                str = male[indexPath.row].description
                imagestr = male[indexPath.row].imageName
                
            }else{
                str = female[indexPath.row].description
                imagestr = female[indexPath.row].imageName
            }
        }
        FitnessDetailsViewController.imageName = imagestr
        FitnessDetailsViewController.imageDescription = str
        self.performSegue(withIdentifier: "segueId", sender: self)
    }
    
    func getItemCountInSection() -> Int {

        if index == VyayamshalaConstants.FOOD{
            if selectedType == 0{
                return veg_name.count
            }else{
                return Non_veg.count
            }
        }else{
            if selectedType == 0{
                return male.count
            }else{
                return female.count
            }
        }
    }
    
    class ImageDescription{
    
        var imageName = String()
        var imageTitle = String()
        var description = String()
    
        init(imageName : String , imagetitle : String ,description : String ) {
            self.imageName = imageName
            self.description = description
            self.imageTitle = imagetitle
        }
        
    }
    
    
    
    
    func maleDataConstruct() {
        
        //======= phase 1
        
        male.append(ImageDescription(imageName:URLConstantsMale.Male_Bench_Press_Medium_Grip,imagetitle: "Bench Press",description: VyayamshalaConstants.Male_Bench_Press_Medium_Grip))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Standing_Dumbell_Press,imagetitle: "Standing Dumbell Press",description: VyayamshalaConstants.Male_Standing_Dumbell_Press))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Seated_Dumbell_Press,imagetitle: "Seated Dumbell Press",description: VyayamshalaConstants.Male_Seated_Dumbell_Press))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Lying_Leg_Curls,imagetitle: "Lying Leg Curls",description: VyayamshalaConstants.Male_Lying_Leg_Curls))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Dip_Machine,imagetitle: "Dip Machine",description: VyayamshalaConstants.Male_Dip_Machine))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Ab_crunches,imagetitle: "Ab crunches",description: VyayamshalaConstants.Male_Ab_crunches))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_T_Bar_Row,imagetitle: "T Bar Row",description: VyayamshalaConstants.Male_T_Bar_Row))
        male.append(ImageDescription(imageName: URLConstantsMale.Male_Leg_Press,imagetitle: "Leg Press",description: VyayamshalaConstants.Male_Leg_Press))
        
        //======= Phase 2
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Push_up,imagetitle: "Push up",description: VyayamshalaConstants.Male_P2_Push_up))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Rear_raises,imagetitle: "Rear raises",description: VyayamshalaConstants.Male_P2_Rear_raises))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Side_raises,imagetitle: "Side Raises",description: VyayamshalaConstants.Male_P2_Side_raises))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Arnold_press,imagetitle: "Arnold press",description: VyayamshalaConstants.Male_P2_Arnold_press))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Front_Raises,imagetitle: "Front raises",description: VyayamshalaConstants.Male_P2_Front_Raises))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Chest_fly_machine,imagetitle: "Chest fly machine",description: VyayamshalaConstants.Male_P2_Chest_fly_machine))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Dumbell_bench_press,imagetitle: "Dumbell bench press",description: VyayamshalaConstants.Male_P2_Dumbell_bench_press))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_incline_dumbell_press,imagetitle: "Incline dumbell press",description: VyayamshalaConstants.Male_P2_incline_dumbell_press))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Machine_shoulder_press,imagetitle: "Machine shoulder press",description: VyayamshalaConstants.Male_P2_Machine_shoulder_press))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_cable_trapezius_upright_row,imagetitle: "Cable trapezius upright row",description: VyayamshalaConstants.Male_P2_cable_trapezius_upright_row))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_Dumbell_incline_lateral_raises,imagetitle: "Dumbell incline lateral raises",description: VyayamshalaConstants.Male_P2_Dumbell_incline_lateral_raises))
        
        male.append(ImageDescription(imageName: URLConstantsMale.Male_P2_MACHINE_REAR_DELTOID_LATERALS,imagetitle: "Machine rear deltoid Laterals",description: VyayamshalaConstants.Male_P2_MACHINE_REAR_DELTOID_LATERALS))
    }
    
    
    
    
    
    
    
    func femaleDataConstruct() {
        
        //=== FITNESS FEMALE phase 1
        
        // TODO take care these three...
        
        //female.append(ImageDescription(imageName: "pull_ups_f",imagetitle: "pull ups",description: VyayamshalaConstants.milk))
        //female.append(ImageDescription(imageName: "pushupf",imagetitle: "push ups",description: VyayamshalaConstants.banana))
        //female.append(ImageDescription(imageName: "leg_raise_f",imagetitle: "leg raises",description: VyayamshalaConstants.sweet_potato))
        
        
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Bridge,imagetitle: "Bridge",description: VyayamshalaConstants.Female_Bridge))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Pushup,imagetitle: "Pushup",description: VyayamshalaConstants.Female_Pushup))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Stepups,imagetitle: "Stepups",description: VyayamshalaConstants.Female_Stepups))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Side_Plank,imagetitle: "Side_Plank",description: VyayamshalaConstants.Female_Side_Plank))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Russian_Twist,imagetitle: "Russian Twist",description: VyayamshalaConstants.Female_Russian_Twist))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Shoulder_Stand,imagetitle: "Shoulder Stand",description: VyayamshalaConstants.Female_Shoulder_Stand))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Kneeling_Pushup,imagetitle: "Kneeling Pushup",description: VyayamshalaConstants.Female_Kneeling_Pushup))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Cardio_Intervals,imagetitle: "Cardio Intervals",description: VyayamshalaConstants.Female_Cardio_Intervals))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Dumbbell_Deadlift,imagetitle: "Dumbbell Deadlift",description: VyayamshalaConstants.Female_Dumbbell_Deadlift))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Triceps_Extension,imagetitle: "Triceps Extension",description: VyayamshalaConstants.Female_Triceps_Extension))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Superman_from_Floor,imagetitle: "Floor Superman",description: VyayamshalaConstants.Female_Superman_from_Floor))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Alternating_Dumbbell_Lying_Triceps_Extension,imagetitle: "Alternate Lying Triceps",description: VyayamshalaConstants.Female_Alternating_Dumbbell_Lying_Triceps_Extension))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Swiss_Ball_Hip_Raise_and_Leg_Curl,imagetitle: "Ball Hip Raise Leg Curl",description: VyayamshalaConstants.Female_Swiss_Ball_Hip_Raise_and_Leg_Curl))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Reverse_Dumbbell_Diagonal_Lunge,imagetitle: "Reverse Diagonal Lunge",description: VyayamshalaConstants.Female_Reverse_Dumbbell_Diagonal_Lunge))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Dumbbell_Reverse_Lunge,imagetitle: "Reverse Lunge",description: VyayamshalaConstants.Female_Dumbbell_Reverse_Lunge))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Second_Position_Plies,imagetitle: "Second Position Plies",description: VyayamshalaConstants.Female_Second_Position_Plies))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Plank_with_Arm_Raise,imagetitle: "Plank Arm_Raise",description: VyayamshalaConstants.Female_Plank_with_Arm_Raise))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Dumbbell_Hammer_Curl,imagetitle: "Hammer Curl",description: VyayamshalaConstants.Female_Dumbbell_Hammer_Curl))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Single_Leg_Deadlift,imagetitle: "Single Leg Deadlift",description: VyayamshalaConstants.Female_Single_Leg_Deadlift))
        female.append(ImageDescription(imageName: URLConstantsFemale.Female_Dumbbell_Side_Lunge,imagetitle: "Side Lunge",description: VyayamshalaConstants.Female_Dumbbell_Side_Lunge))
        
    }
}
