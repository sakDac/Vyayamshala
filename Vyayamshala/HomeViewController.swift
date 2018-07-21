//
//  HomeViewController.swift
//  Vyayamshala
//
//  Created saket bhushan on 16/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class HomeViewController: UIViewController, HomeViewProtocol {

	var presenter: HomePresenterProtocol?
    var model: [HomeModel]!
    
    
    @IBOutlet weak var tableView: UITableView!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        HomeRouter.createModule(vc: self)
        self.model = HomeModel.getData()
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.model.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.selectionStyle = .none
        cell.setData(homeModel: model[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat((2 * self.tableView.frame.height)/3)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        switch model[indexPath.row].name {
            
        case VyayamshalaConstants.PEOPLE_AND_STORIES:
            self.presenter?.peopleAndStories()
            
        case VyayamshalaConstants.GYM_ATERNATIVES:
            self.presenter?.gymAlternatives(option: .GymAletnative)
            
        case VyayamshalaConstants.HOME_REMEDIES:
            self.presenter?.gymAlternatives(option: .HomeRemedy)
            
        case VyayamshalaConstants.FOOD:
            self.presenter?.foodNFitness(option: .Food)
            
        case VyayamshalaConstants.FITNESS:
            self.presenter?.foodNFitness(option: .Fitness)
            
        default:
            print(" no handler....  ")
        }
    }
}
