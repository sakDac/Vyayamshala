//
//  SJSideMenuNavigationViewController.swift
//  shoppingjoe
//
//  Created by Global on 09/12/15.
//  Copyright © 2015 Senfina. All rights reserved.
//

import UIKit

public class ENSlideMenuNavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.navigationBar.tintColor = UIColor.black
        if navigationController.childViewControllers.count == 1 {
            let menuButton = UIButton(type: UIButtonType.custom)
            menuButton.addTarget(viewController, action: #selector(viewController.toggleSideMenuView), for: UIControlEvents.touchUpInside)
            menuButton.setImage(UIImage(named: "Menu"), for: UIControlState.normal)
            menuButton.frame = CGRect(x : 0,y : 0,width : 30 ,height : 30)
            menuButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0)
            let menuBarButton = UIBarButtonItem(customView: menuButton)
            
            viewController.navigationItem.leftBarButtonItems = [menuBarButton]
        }
    }
    
    
    
}

class SenfinaNavigationViewController: ENSideMenuNavigationController, ENSideMenuDelegate {
    
    let senfinaNavBarDelegate = ENSlideMenuNavigationControllerDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = senfinaNavBarDelegate
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: SenfinaSideMenuTableTableViewController(style: UITableViewStyle.grouped), menuPosition: ENSideMenuPosition.Left, blurStyle: UIBlurEffectStyle.extraLight)
        sideMenu?.menuWidth = UIScreen.main.bounds.width-120
        sideMenu?.bouncingEnabled = true
        sideMenu?.allowPanGesture = true
        sideMenu?.animationDuration = 0.5
        sideMenu?.delegate = self
        view.bringSubview(toFront: navigationBar)
    }
    
    
     func sideMenuWillOpen(){
    
        print("sideMenuWillOpen")
    }
     func sideMenuWillClose(){
    print("sideMenuWillClose")
    }
    func sideMenuDidOpen(){
    print("sideMenuDidOpen")
    }
     func sideMenuDidClose(){
    print("sideMenuDidClose")
    }
    
    
    
}
