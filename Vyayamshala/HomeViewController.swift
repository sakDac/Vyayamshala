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
    
    @IBOutlet weak var tableView: UITableView!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        HomeRouter.createModule(vc: self)
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat((2 * self.tableView.frame.height)/3)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.presenter?.peopleAndStories()
        case 1:
            self.presenter?.gymAlternatives()
        default:
            print(" no handler....  ")
        }
    }
}
