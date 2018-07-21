//
//  HomeTableViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 17/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.layer.cornerRadius = 20
        Util.addShadow(view: self.containerView)
    }

    func setData(homeModel: HomeModel) {
        self.nameLbl.text = homeModel.name
    }

}
