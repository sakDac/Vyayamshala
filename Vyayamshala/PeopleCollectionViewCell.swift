//
//  PeopleCollectionViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class PeopleCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var peopleImg: UIImageView!
    
    func setData(imgUrl: URL)  {
        self.peopleImg.sd_setImage(with: imgUrl)
    }

}
