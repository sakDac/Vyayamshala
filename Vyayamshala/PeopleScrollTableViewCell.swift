//
//  PeopleScrollTableViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 19/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit


class PeopleScrollTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let imagesList = [URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner1.jpg?alt=media&token=f8e01e71-c30d-4d5b-990d-b3bcf9b50662"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner2.jpg?alt=media&token=d020964d-6b5b-4e67-82f8-491fb308655a"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner3.jpg?alt=media&token=a93b4446-9907-4a13-99cb-8ec7e2add5d4"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner4.jpg?alt=media&token=004a8714-f0ce-43c0-840c-5ad92cebb7a7"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner5.jpg?alt=media&token=cea50dcc-e6d6-45e0-9add-2737991c48d9")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellData() {
        self.collectionView.reloadData()
    }

}

extension PeopleScrollTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PeopleCollectionViewCell", for: indexPath) as! PeopleCollectionViewCell
        cell.setData(imgUrl: imagesList[indexPath.row]!)
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = UIScreen.main.bounds.width
        return CGSize(width: width, height: 200)
    }
}
