//
//  PeopleAndStoriesViewController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 28/01/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class PeopleAndStoriesViewController: UITableViewController{
    
    let GROUP_TYPE_BANNER = 1
    
    let GROUP_TYPE_NAME_STORY = 2
    
    var groupDataModel =  [GroupDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
        self.tableView.rowHeight = UITableViewAutomaticDimension
        groupDataModel =  formDataModel()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        //  print(" numberOfSections  \(groupDataModel.count)")
        
        return groupDataModel.count
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("numberOfRowsInSection ::  \(groupDataModel[section].childDataModel[0].childList.count)")
        
        return groupDataModel[section].childDataModel[0].childList.count
    }
    
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //  print(" indexPath.row \(indexPath.section)")
        if GROUP_TYPE_BANNER == getCellType(int: indexPath.section) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bannerImageAutoScrollCell") as! ScrollingBannerImagesTableViewCell
            cell.setupScrollView()
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "nameAndStoryCell") as! NameAndStoryTableViewCell
            
            let nameAndStory = (groupDataModel[1].childDataModel[0].childList[indexPath.row]) as! NameAndStory
            cell.namelabel.text = nameAndStory.name
            cell.storyLabel.text = nameAndStory.story
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if GROUP_TYPE_BANNER == getCellType(int: indexPath.section) {
            return 125
        }else{
            return UITableViewAutomaticDimension
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // adding initial state...
        
        cell.alpha = 0
        var translationIndex = 0
        
        
        if GROUP_TYPE_BANNER == getCellType(int: indexPath.section) {
            
            translationIndex = 250
        }else{
            if (indexPath.row % 2) == 0 {
                translationIndex = -250
            }else{
                translationIndex = 250
            }
        }
        let  translate = CATransform3DTranslate(CATransform3DIdentity, CGFloat(translationIndex),0, 0)
        cell.layer.transform = translate
        
        // adding final state...
        UIView.animate(withDuration: 0.40) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if GROUP_TYPE_BANNER == getCellType(int: indexPath.section) {
            return 125
        }else{
            return UITableViewAutomaticDimension
        }
    }
    
    
    
    func getCellType(int : Int) -> Int {
        
        return groupDataModel[int].groupType
        
    }
    
    func formDataModel() -> [GroupDataModel] {
        
        var groupDataModelList = [GroupDataModel]()
        
        let constants =  VyayamshalaConstants()
        let lgnd1 =    NameAndStory(name: constants.Arnold_Schwarzenegger,story: constants.Arnold_Schwarzenegger_STORY)
        let lgnd2 =    NameAndStory(name: constants.Dennis_James,story: constants.Dennis_James_STORY)
        let lgnd3 =    NameAndStory(name: constants.MARKUS_RUHL,story: constants.MARKUS_RUHL_STORY)
        let lgnd4 =    NameAndStory(name: constants.GUNTER_SCHLIERKAMP,story: constants.GUNTER_SCHLIERKAMP_STORY)
        let lgnd5 =    NameAndStory(name: constants.RONNIE_COLEMAN,story: constants.RONNIE_COLEMAN_STORY)
        let lgnd6 =    NameAndStory(name: constants.PHASE_2_PHIL_HEATH,story: constants.PHASE_2_PHIL_HEATH_Story)
        let lgnd7 =    NameAndStory(name: constants.PHASE_2_FRANCO_COLUMBU,story: constants.PHASE_2_FRANCO_COLUMBU_Story)
        let lgnd8 =    NameAndStory(name: constants.PHASE_2_FRANK_ZANE,story: constants.PHASE_2_FRANK_ZANE_Story)
        let lgnd9 =    NameAndStory(name: constants.PHASE_2_LEE_HANEY,story: constants.PHASE_2_LEE_HANEY_Story)
        let lgnd10 =    NameAndStory(name: constants.PHASE_2_DEXTER_JACKSON,story: constants.PHASE_2_DEXTER_JACKSON_Story)
        let lgnd11 =    NameAndStory(name: constants.PHASE_2_SHAWN_RAY,story: constants.PHASE_2_SHAWN_RAY_Story)
        let lgnd12 =    NameAndStory(name: constants.PHASE_2_FLEX_WHEELER,story: constants.PHASE_2_FLEX_WHEELER_Story)
        
        var listOfNameAndStory = [NameAndStory]()
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
        
        
        var listOfChildDataModel_name_story = [ChildDataModel]()
        let childDataModel_name_story =   ChildDataModel(childList: listOfNameAndStory)
        
        listOfChildDataModel_name_story.append(childDataModel_name_story)
        
        let  groupDataModel_name_story =  GroupDataModel(childList: listOfChildDataModel_name_story,grpType: GROUP_TYPE_NAME_STORY)
        var emptyListForBannerChildModelList = [ChildDataModel]()
        var emptylist = [AnyObject]()
        emptylist.append("" as AnyObject)
        let childDataModel_banner =   ChildDataModel(childList: emptylist)
        
        
        emptyListForBannerChildModelList.append(childDataModel_banner)
        let  groupDataModel_banner =  GroupDataModel(childList: emptyListForBannerChildModelList,grpType: GROUP_TYPE_BANNER)
        
        groupDataModelList.append(groupDataModel_banner)
        groupDataModelList.append(groupDataModel_name_story)
        
        return groupDataModelList
    }
    
    
    
    class GroupDataModel {
        
        var childDataModel = [ChildDataModel]()
        var groupType = Int()
        init(childList : [ChildDataModel] , grpType : Int ) {
            self.childDataModel = childList
            self.groupType = grpType
        }
    }
    class ChildDataModel {
        var childList = [AnyObject]()
        
        init(childList : [AnyObject]) {
            self.childList = childList
        }
    }
    class NameAndStory  {
        var name = String()
        var story = String()
        
        init(name : String, story : String) {
            self.name = name
            self.story = story
        }
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        ScrollingBannerImagesTableViewCell.stopScrolling()
    }
}
