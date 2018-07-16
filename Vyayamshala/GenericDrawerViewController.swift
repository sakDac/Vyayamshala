//
//  ViewController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 28/01/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class GenericDrawerViewController: UIViewController ,OnDrawerItemSelected{

   static var currenSelectedIndexName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onPeopleStoriesSelected()
    }

    func onPeopleStoriesSelected()
    {
        toggleSideMenuView()
        GenericDrawerViewController.currenSelectedIndexName = VyayamshalaConstants.PEOPLE_AND_STORIES
        UIApplication.shared.windows[0].rootViewController = UIStoryboard(name: "PeopleAndStroies", bundle: nil).instantiateViewController(withIdentifier: "peopleAndStroiesId")
    }
    
    func onGymSelected()
    {
        toggleSideMenuView()
        GenericDrawerViewController.currenSelectedIndexName = VyayamshalaConstants.FITNESS
        UIApplication.shared.windows[0].rootViewController = UIStoryboard(name: "Fitness", bundle: nil).instantiateViewController(withIdentifier: "fitness")
        
    }
    
    
    func onGymAlternativesSelected()
    {
        toggleSideMenuView()
        GenericDrawerViewController.currenSelectedIndexName = VyayamshalaConstants.GYM_ATERNATIVES
        UIApplication.shared.windows[0].rootViewController = UIStoryboard(name: "GymAlternatives", bundle: nil).instantiateViewController(withIdentifier: "gymalternatives")
    }
    
    
    func onFoodSelected()
    {
        toggleSideMenuView()
        GenericDrawerViewController.currenSelectedIndexName = VyayamshalaConstants.FOOD
        UIApplication.shared.windows[0].rootViewController = UIStoryboard(name: "Fitness", bundle: nil).instantiateViewController(withIdentifier: "fitness")        
    }
    
    
    func onHomeRemediesSelected() {
        toggleSideMenuView()
        GenericDrawerViewController.currenSelectedIndexName = VyayamshalaConstants.HOME_REMEDIES
        UIApplication.shared.windows[0].rootViewController = UIStoryboard(name: "GymAlternatives", bundle: nil).instantiateViewController(withIdentifier: "gymalternatives")
    }
    
    
   static func getCurrentIndexName() -> String {
        return GenericDrawerViewController.currenSelectedIndexName
    }

}

