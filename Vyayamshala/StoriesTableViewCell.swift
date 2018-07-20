//
//  StoriesTableViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class StoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var storyLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(peopleNameStories: PeopleNameStories) {
        self.nameLbl.text = peopleNameStories.name
        self.storyLbl.text = peopleNameStories.story
    }

}
