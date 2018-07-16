//
//  GymAletnativesViewController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 15/02/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class GymAletnativesViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate ,UITableViewDelegate,UITableViewDataSource{
    
    
    var list : [EntityAndDescription] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var dynamicDescription : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formDataModel()
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
      return list.count
    }
    
     public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return list[row].entity
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(list[row])
        dynamicDescription = list[row].description
        self.tableView.reloadData()
    }
    
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return 1
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DescriptionTableViewCell
        cell.uitextLabelDes.text = dynamicDescription
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500 //UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500 //UITableViewAutomaticDimension
    }
    
    
    func formDataModel(){
        
        if GenericDrawerViewController.currenSelectedIndexName == VyayamshalaConstants.HOME_REMEDIES {
            
            list.append(EntityAndDescription(entity: "Drink Water",description: VyayamshalaConstants.Drink_Water))
            
            list.append(EntityAndDescription(entity: "Green tea",description: VyayamshalaConstants.Green_tea))
            
            list.append(EntityAndDescription(entity: "Liquid Colloidal Minerals",description: VyayamshalaConstants.Liquid_Colloidal_Minerals))
            
            list.append(EntityAndDescription(entity: "Eat fibre",description: VyayamshalaConstants.Eat_fibre))
            
            list.append(EntityAndDescription(entity: "Take calcium supplements",description: VyayamshalaConstants.Take_calcium_supplements))
            
            list.append(EntityAndDescription(entity: "Lemon and black pepper",description: VyayamshalaConstants.Lemon_and_black_pepper))
            
            list.append(EntityAndDescription(entity: "Ginseng",description: VyayamshalaConstants.Ginseng))
            
            list.append(EntityAndDescription(entity: "Coconut oil",description: VyayamshalaConstants.Coconut_oil))

            list.append(EntityAndDescription(entity: "Iodine",description: VyayamshalaConstants.Iodine))

            list.append(EntityAndDescription(entity: "Quality protein Intake",description: VyayamshalaConstants.Quality_protein_Intake))

            list.append(EntityAndDescription(entity: "Moderate carbohyderate Intake",description: VyayamshalaConstants.Moderate_carbohyderate_Intake))

            list.append(EntityAndDescription(entity: "Avoid Sugar",description: VyayamshalaConstants.Avoid_Sugar))

            list.append(EntityAndDescription(entity: "Eat regularly",description: VyayamshalaConstants.Eat_regularly))

            list.append(EntityAndDescription(entity: "Never leave house hungry",description: VyayamshalaConstants.Never_leave_house_hungry))

            list.append(EntityAndDescription(entity: "Aleo vera",description: VyayamshalaConstants.Aleo_vera))
            
            list.append(EntityAndDescription(entity: "Curry leaves",description: VyayamshalaConstants.Curry_leaves))

            list.append(EntityAndDescription(entity: "Rose petal Water",description: VyayamshalaConstants.Rose_petal_Water))

            list.append(EntityAndDescription(entity: "Chewing gum",description: VyayamshalaConstants.Chewing_gum))

            list.append(EntityAndDescription(entity: "Get enough Sleep",description: VyayamshalaConstants.Get_enough_Sleep))

            list.append(EntityAndDescription(entity: "Black pepper And Lemon juice",description: VyayamshalaConstants.Black_pepper_lemon))

            list.append(EntityAndDescription(entity: "Apple Snacks",description: VyayamshalaConstants.Apple_Snacks))
        }
        else if (GenericDrawerViewController.currenSelectedIndexName == VyayamshalaConstants.GYM_ATERNATIVES){
            
            list.append(EntityAndDescription(entity: "Walk",description: VyayamshalaConstants.walk))
            
            list.append(EntityAndDescription(entity: "Dance",description: VyayamshalaConstants.dance))
            
            list.append(EntityAndDescription(entity: "Take the Stairs",description: VyayamshalaConstants.take_stairs))
            
            list.append(EntityAndDescription(entity: "Work out with youtube",description: VyayamshalaConstants.youtube))
            
            list.append(EntityAndDescription(entity: "Weight the beans",description: VyayamshalaConstants.Weigth_the_beans))
            
            list.append(EntityAndDescription(entity: "Do the house work",description: VyayamshalaConstants.house_work))
            
            list.append(EntityAndDescription(entity: "Hula hoops",description: VyayamshalaConstants.hula_hoops))
            
            list.append(EntityAndDescription(entity: "Gardening",description: VyayamshalaConstants.work_in_garder))
            
            list.append(EntityAndDescription(entity: "Go for Swim",description: VyayamshalaConstants.swim))
            
            list.append(EntityAndDescription(entity: "Tv Commercials",description: VyayamshalaConstants.tv_commercials))

            list.append(EntityAndDescription(entity: "Run Stairs",description: VyayamshalaConstants.run_staires))

            list.append(EntityAndDescription(entity: "Bike to work",description: VyayamshalaConstants.bike_to_work))

            
        }
        self.dynamicDescription = list[0].description
        pickerView.reloadAllComponents()
        self.tableView.reloadData()
    }
    
    
    
    
    class EntityAndDescription{
        let entity : String
        let description : String
        
        init(entity : String , description : String) {
            self.entity = entity
            self.description = description
        }
        
    }
    
    
    
    
    
    
    
}
