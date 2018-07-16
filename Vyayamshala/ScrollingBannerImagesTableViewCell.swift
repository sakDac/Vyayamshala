//
//  ScrollingBannerImagesTableViewCell.swift
//  Vyayamshala
//
//  Created by saket bhushan on 28/01/17.
//  Copyright © 2017 saket bhushan. All rights reserved.
//

import UIKit

class ScrollingBannerImagesTableViewCell: UITableViewCell ,UIScrollViewDelegate {

    @IBOutlet weak var UiScrollView: UIScrollView!
    
    var viewFrame: CGRect = CGRect(x : 0,y:  0,width : 0,height : 0)
    let imagesList = [URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner1.jpg?alt=media&token=f8e01e71-c30d-4d5b-990d-b3bcf9b50662"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner2.jpg?alt=media&token=d020964d-6b5b-4e67-82f8-491fb308655a"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner3.jpg?alt=media&token=a93b4446-9907-4a13-99cb-8ec7e2add5d4"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner4.jpg?alt=media&token=004a8714-f0ce-43c0-840c-5ad92cebb7a7"),
                      URL(string: "https://firebasestorage.googleapis.com/v0/b/vyayamshala-72a3c.appspot.com/o/PeopleAndStroiesResouces%2Fbanner5.jpg?alt=media&token=cea50dcc-e6d6-45e0-9add-2737991c48d9")]
    
    var timerValue = 0;
    static var timer = Timer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ScrollingBannerImagesTableViewCell.timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector:#selector(ScrollingBannerImagesTableViewCell.setAutoScroll) , userInfo: nil, repeats: true)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func setupScrollView() {
        self.UiScrollView.isPagingEnabled = true
        for index in 0..<5 {
            let xposition = self.UiScrollView.frame.size.width * CGFloat(index)
            viewFrame.origin.x = xposition
            viewFrame.origin.y = 0
            viewFrame.size.width = self.UiScrollView.frame.size.width
            viewFrame.size.height = self.UiScrollView.bounds.height
            let imageView = UIImageView(frame:viewFrame)
            imageView.sd_setImage(with: imagesList[index])
            self.UiScrollView.addSubview(imageView)
        }
        self.UiScrollView.clipsToBounds = false
        self.UiScrollView.bounces = false
        self.UiScrollView.contentSize = CGSize(width : self.UiScrollView.frame.size.width * CGFloat(imagesList.count),height : self.UiScrollView.frame.size.height)
    }
    
    @objc func setAutoScroll () {
        if !self.imagesList.isEmpty {
            if self.timerValue > 4 {
                self.timerValue = 0
                 UiScrollView.setContentOffset(CGPoint(x : 0,y : 0), animated: false)
                return
            }
            let x = CGFloat(self.timerValue) * UiScrollView.frame.size.width
            UiScrollView.setContentOffset(CGPoint(x : x,y : 0), animated: true)
            self.timerValue += 1
        }
    }
    
   static func stopScrolling() {
      ScrollingBannerImagesTableViewCell.timer.invalidate()
    }
    
    
    
    
}
