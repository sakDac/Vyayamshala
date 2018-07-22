//
//  FitnessViewCollectionController.swift
//  Vyayamshala
//
//  Created by saket bhushan on 04/02/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit


class FitnessViewCollectionController: UICollectionViewController {

    
    let leftAndRightPadding : CGFloat = 32.0
    let noOfItemsPerRow : CGFloat = 2.0
    let heightAdjustment : CGFloat = 32.0
    
    let MALE = 0
    let VEG = 0
    
    var selectedType = 0
    
    var fitnessOrFood = ""

    var male = [ImageDescription]()
    
    var female = [ImageDescription]()
    
    var veg_name = [ImageDescription]()
    
    var Non_veg = [ImageDescription]()

    
    func formDataModel()  {
        
    }
    
    @IBOutlet weak var segmentControllOutlet: UISegmentedControl!
    
    
    @IBAction func segmentControllAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            selectedType = 0
        }else{
            selectedType = 1
        }
            self.collectionView?.reloadData()
        
        if (self.collectionView?.scrollsToTop)! {
            self.collectionView?.scrollToItem(at: IndexPath(row: 0, section: 0),
                                              at: .top,
                                              animated: true)
        }
    }
    
    var index = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControllOutlet.tintColor = UIColor.black
        formDataModel()
        let width =  ((collectionView?.frame)!.width - leftAndRightPadding ) / noOfItemsPerRow
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: width, height: width+heightAdjustment)
        
        // Add some Index Here.
        //index =  GenericDrawerViewController.getCurrentIndexName()
        
        if index == VyayamshalaConstants.FOOD{
            segmentControllOutlet.setTitle("VEG", forSegmentAt: 0)
            segmentControllOutlet.setTitle("Non-VEG", forSegmentAt: 1)
        }
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getItemCountInSection()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sakCell", for: indexPath) as! FitnessCollectionViewCell
        var str = ""
        var imagestr = ""
        
        if index == VyayamshalaConstants.FOOD{
            
            if selectedType == VEG{
                str = veg_name[indexPath.row].imageTitle
                imagestr = veg_name[indexPath.row].imageName
                
            }else{
                str = Non_veg[indexPath.row].imageTitle
                imagestr = Non_veg[indexPath.row].imageName
            }
            
        }else{
        
            if selectedType == MALE{
                str = male[indexPath.row].imageTitle
                imagestr = male[indexPath.row].imageName
            }else{
                str = female[indexPath.row].imageTitle
                imagestr = female[indexPath.row].imageName
            }
        
        }
        cell.excerciseName.text = str
        cell.excerciseImage.sd_setImage(with: URL(string: imagestr))
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // adding initial state...
        cell.alpha = 0
        var translationIndex = 0
            if (indexPath.row % 2) == 0 {
                translationIndex = -250
            }else{
                translationIndex = 250
            }
        let  translate = CATransform3DTranslate(CATransform3DIdentity, CGFloat(translationIndex),0, 0)
        cell.layer.transform = translate
        
        // adding final state...
        UIView.animate(withDuration: 0.40) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var str = ""
        var imagestr = ""
        
        if index == VyayamshalaConstants.FOOD{
            
            if selectedType == 0{
                str = veg_name[indexPath.row].description
                imagestr = veg_name[indexPath.row].imageName
                
            }else{
                str = Non_veg[indexPath.row].description
                imagestr = Non_veg[indexPath.row].imageName
            }
            
        }else{
            
            if selectedType == 0{
                str = male[indexPath.row].description
                imagestr = male[indexPath.row].imageName
                
            }else{
                str = female[indexPath.row].description
                imagestr = female[indexPath.row].imageName
            }
        }
        FitnessDetailsViewController.imageName = imagestr
        FitnessDetailsViewController.imageDescription = str
        self.performSegue(withIdentifier: "segueId", sender: self)
    }
    
    func getItemCountInSection() -> Int {

        if index == VyayamshalaConstants.FOOD{
            if selectedType == 0{
                return veg_name.count
            }else{
                return Non_veg.count
            }
        }else{
            if selectedType == 0{
                return male.count
            }else{
                return female.count
            }
        }
    }
    
    class ImageDescription{
    
        var imageName = String()
        var imageTitle = String()
        var description = String()
    
        init(imageName : String , imagetitle : String ,description : String ) {
            self.imageName = imageName
            self.description = description
            self.imageTitle = imagetitle
        }
        
    }
}
