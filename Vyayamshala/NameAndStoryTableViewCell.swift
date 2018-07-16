//
//  NameAndStoryTableViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 29/01/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class NameAndStoryTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var namelabel: UILabel!
    
    
    @IBOutlet weak var storyLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
