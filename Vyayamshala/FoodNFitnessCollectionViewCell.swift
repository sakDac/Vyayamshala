//
//  FoodNFitnessCollectionViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class FoodNFitnessCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lblConatinerView: UIView!
    
    override func awakeFromNib() {
        self.containerView.layer.cornerRadius = 20
        Util.addShadow(view: self.containerView)
        self.name.layer.cornerRadius = 20
        self.lblConatinerView.layer.cornerRadius = 20
    }
    
    func setData(model: FoodNFitnessModel) {
        self.imgView.sd_setImage(with: URL(string: model.imageUrl)!)
        self.name.text = model.imageTitle
    }
}