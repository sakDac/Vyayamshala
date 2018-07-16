//
//  FitnessDetailsViewController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 04/02/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class FitnessDetailsViewController: UIViewController {

    @IBOutlet weak var imageExcercise: UIImageView!
    
    static var imageName = ""
    
    static var imageDescription = ""

    @IBOutlet weak var excerciseDes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageExcercise.sd_setImage(with: URL(string: FitnessDetailsViewController.imageName)) //= UIImage(named: FitnessDetailsViewController.imageName)
        
        excerciseDes.text = FitnessDetailsViewController.imageDescription

    }
}
