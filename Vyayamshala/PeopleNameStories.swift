//
//  PeopleNameStories.swift
//  Vyayamshala
//
//  Created by saket bhushan on 20/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class PeopleNameStories  {
    var name = ""
    var story = ""
    
    init(name : String, story : String) {
        self.name = name
        self.story = story
    }
    
   class func getPeopleNameAndStories() ->  [PeopleNameStories] {
        let constants =  VyayamshalaConstants()
        let lgnd1 =    PeopleNameStories(name: constants.Arnold_Schwarzenegger,story: constants.Arnold_Schwarzenegger_STORY)
        let lgnd2 =    PeopleNameStories(name: constants.Dennis_James,story: constants.Dennis_James_STORY)
        let lgnd3 =    PeopleNameStories(name: constants.MARKUS_RUHL,story: constants.MARKUS_RUHL_STORY)
        let lgnd4 =    PeopleNameStories(name: constants.GUNTER_SCHLIERKAMP,story: constants.GUNTER_SCHLIERKAMP_STORY)
        let lgnd5 =    PeopleNameStories(name: constants.RONNIE_COLEMAN,story: constants.RONNIE_COLEMAN_STORY)
        let lgnd6 =    PeopleNameStories(name: constants.PHASE_2_PHIL_HEATH,story: constants.PHASE_2_PHIL_HEATH_Story)
        let lgnd7 =    PeopleNameStories(name: constants.PHASE_2_FRANCO_COLUMBU,story: constants.PHASE_2_FRANCO_COLUMBU_Story)
        let lgnd8 =    PeopleNameStories(name: constants.PHASE_2_FRANK_ZANE,story: constants.PHASE_2_FRANK_ZANE_Story)
        let lgnd9 =    PeopleNameStories(name: constants.PHASE_2_LEE_HANEY,story: constants.PHASE_2_LEE_HANEY_Story)
        let lgnd10 =   PeopleNameStories(name: constants.PHASE_2_DEXTER_JACKSON,story: constants.PHASE_2_DEXTER_JACKSON_Story)
        let lgnd11 =   PeopleNameStories(name: constants.PHASE_2_SHAWN_RAY,story: constants.PHASE_2_SHAWN_RAY_Story)
        let lgnd12 =   PeopleNameStories(name: constants.PHASE_2_FLEX_WHEELER,story: constants.PHASE_2_FLEX_WHEELER_Story)
        
        var listOfNameAndStory = [PeopleNameStories]()
        listOfNameAndStory.append(lgnd1)
        listOfNameAndStory.append(lgnd2)
        listOfNameAndStory.append(lgnd3)
        listOfNameAndStory.append(lgnd4)
        listOfNameAndStory.append(lgnd5)
        listOfNameAndStory.append(lgnd6)
        listOfNameAndStory.append(lgnd7)
        listOfNameAndStory.append(lgnd8)
        listOfNameAndStory.append(lgnd9)
        listOfNameAndStory.append(lgnd10)
        listOfNameAndStory.append(lgnd11)
        listOfNameAndStory.append(lgnd12)
        return listOfNameAndStory
    }
}
