//
//  GymAletnativesHomeRemediesCollectionViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 20/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class GymAletnativesHomeRemediesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var headinglbl: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    func setData(model: Model) {
        self.headinglbl.text = model.entity
    }
    
}
